#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {TYPE_2__* crtc; } ;
struct exynos_dsi {int mode_flags; int /*<<< orphan*/  dev; TYPE_4__* driver_data; TYPE_3__ encoder; } ;
struct drm_display_mode {scalar_t__ vdisplay; scalar_t__ hdisplay; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ vsync_start; scalar_t__ vsync_end; scalar_t__ htotal; scalar_t__ vtotal; } ;
struct TYPE_8__ {unsigned int num_bits_resol; } ;
struct TYPE_6__ {TYPE_1__* state; } ;
struct TYPE_5__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,unsigned int) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__,unsigned int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  DSIM_MDRESOL_REG ; 
 int /*<<< orphan*/  DSIM_MHPORCH_REG ; 
 int /*<<< orphan*/  DSIM_MSYNC_REG ; 
 int /*<<< orphan*/  DSIM_MVPORCH_REG ; 
 int FUNC8 (scalar_t__) ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct exynos_dsi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct exynos_dsi *dsi)
{
	struct drm_display_mode *m = &dsi->encoder.crtc->state->adjusted_mode;
	unsigned int num_bits_resol = dsi->driver_data->num_bits_resol;
	u32 reg;

	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO) {
		reg = FUNC0(0xf)
			| FUNC8(m->vsync_start - m->vdisplay)
			| FUNC5(m->vtotal - m->vsync_end);
		FUNC10(dsi, DSIM_MVPORCH_REG, reg);

		reg = FUNC2(m->hsync_start - m->hdisplay)
			| FUNC1(m->htotal - m->hsync_end);
		FUNC10(dsi, DSIM_MHPORCH_REG, reg);

		reg = FUNC7(m->vsync_end - m->vsync_start)
			| FUNC4(m->hsync_end - m->hsync_start);
		FUNC10(dsi, DSIM_MSYNC_REG, reg);
	}
	reg =  FUNC3(m->hdisplay, num_bits_resol) |
		FUNC6(m->vdisplay, num_bits_resol);

	FUNC10(dsi, DSIM_MDRESOL_REG, reg);

	FUNC9(dsi->dev, "LCD size = %dx%d\n", m->hdisplay, m->vdisplay);
}