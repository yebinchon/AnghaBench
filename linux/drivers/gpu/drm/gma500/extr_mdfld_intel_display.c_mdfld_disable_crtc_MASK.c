#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct psb_offset {int /*<<< orphan*/  dpll; int /*<<< orphan*/  conf; int /*<<< orphan*/  base; int /*<<< orphan*/  cntr; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int DISPLAY_PLANE_ENABLE ; 
 int DPLL_VCO_ENABLE ; 
 int HS_CTRL_FIFO_EMPTY ; 
 int HS_DATA_FIFO_EMPTY ; 
 int MDFLD_PWR_GATE_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PIPEACONF ; 
 int PIPEACONF_ENABLE ; 
 int /*<<< orphan*/  PIPECCONF ; 
 int PIPECONF_CURSOR_OFF ; 
 int PIPECONF_PLANE_OFF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct drm_device *dev, int pipe)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	const struct psb_offset *map = &dev_priv->regmap[pipe];
	u32 temp;

	FUNC3(dev->dev, "pipe = %d\n", pipe);


	if (pipe != 1)
		FUNC5(dev, FUNC0(pipe),
				HS_CTRL_FIFO_EMPTY | HS_DATA_FIFO_EMPTY);

	/* Disable display plane */
	temp = FUNC1(map->cntr);
	if ((temp & DISPLAY_PLANE_ENABLE) != 0) {
		FUNC2(map->cntr,
			  temp & ~DISPLAY_PLANE_ENABLE);
		/* Flush the plane changes */
		FUNC2(map->base, FUNC1(map->base));
		FUNC1(map->base);
	}

	/* FIXME_JLIU7 MDFLD_PO revisit */

	/* Next, disable display pipes */
	temp = FUNC1(map->conf);
	if ((temp & PIPEACONF_ENABLE) != 0) {
		temp &= ~PIPEACONF_ENABLE;
		temp |= PIPECONF_PLANE_OFF | PIPECONF_CURSOR_OFF;
		FUNC2(map->conf, temp);
		FUNC1(map->conf);

		/* Wait for for the pipe disable to take effect. */
		FUNC4(dev, pipe);
	}

	temp = FUNC1(map->dpll);
	if (temp & DPLL_VCO_ENABLE) {
		if ((pipe != 1 &&
			!((FUNC1(PIPEACONF) | FUNC1(PIPECCONF))
				& PIPEACONF_ENABLE)) || pipe == 1) {
			temp &= ~(DPLL_VCO_ENABLE);
			FUNC2(map->dpll, temp);
			FUNC1(map->dpll);
			/* Wait for the clocks to turn off. */
			/* FIXME_MDFLD PO may need more delay */
			FUNC6(500);

			if (!(temp & MDFLD_PWR_GATE_EN)) {
				/* gating power of DPLL */
				FUNC2(map->dpll, temp | MDFLD_PWR_GATE_EN);
				/* FIXME_MDFLD PO - change 500 to 1 after PO */
				FUNC6(5000);
			}
		}
	}

}