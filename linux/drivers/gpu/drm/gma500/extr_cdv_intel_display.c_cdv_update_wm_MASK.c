#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct gma_crtc {int pipe; } ;
struct drm_psb_private {TYPE_1__* ops; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_sr ) (struct drm_device*) ;} ;

/* Variables and functions */
 int CURSOR_A_FIFO_WM_MASK ; 
 int CURSOR_A_FIFO_WM_SHIFT ; 
 int CURSOR_B_FIFO_WM1_SHIFT ; 
 int CURSOR_B_FIFO_WM_MASK ; 
 int CURSOR_B_FIFO_WM_SHIFT ; 
 int CURSOR_FIFO_SR_WM1_SHIFT ; 
 int /*<<< orphan*/  DSPFW1 ; 
 int /*<<< orphan*/  DSPFW2 ; 
 int /*<<< orphan*/  DSPFW3 ; 
 int /*<<< orphan*/  DSPFW4 ; 
 int /*<<< orphan*/  DSPFW5 ; 
 int /*<<< orphan*/  DSPFW6 ; 
 int DSP_FIFO_SR_WM_MASK ; 
 int DSP_FIFO_SR_WM_SHIFT ; 
 int DSP_PLANE_A_FIFO_WM1_SHIFT ; 
 int DSP_PLANE_B_FIFO_WM1_SHIFT ; 
 int DSP_PLANE_C_FIFO_WM_MASK ; 
 int DSP_PLANE_C_FIFO_WM_SHIFT ; 
 int /*<<< orphan*/  FW_BLC_SELF ; 
 int FW_BLC_SELF_EN ; 
 int /*<<< orphan*/  INTEL_OUTPUT_LVDS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_device*,int) ; 
 scalar_t__ FUNC3 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 struct gma_crtc* FUNC6 (struct drm_crtc*) ; 

void FUNC7(struct drm_device *dev, struct drm_crtc *crtc)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct gma_crtc *gma_crtc = FUNC6(crtc);

	/* Is only one pipe enabled? */
	if (FUNC2(dev, 0) ^ FUNC2(dev, 1)) {
		u32 fw;

		fw = FUNC0(DSPFW1);
		fw &= ~DSP_FIFO_SR_WM_MASK;
		fw |= (0x7e << DSP_FIFO_SR_WM_SHIFT);
		fw &= ~CURSOR_B_FIFO_WM_MASK;
		fw |= (0x4 << CURSOR_B_FIFO_WM_SHIFT);
		FUNC1(DSPFW1, fw);

		fw = FUNC0(DSPFW2);
		fw &= ~CURSOR_A_FIFO_WM_MASK;
		fw |= (0x6 << CURSOR_A_FIFO_WM_SHIFT);
		fw &= ~DSP_PLANE_C_FIFO_WM_MASK;
		fw |= (0x8 << DSP_PLANE_C_FIFO_WM_SHIFT);
		FUNC1(DSPFW2, fw);

		FUNC1(DSPFW3, 0x36000000);

		/* ignore FW4 */

		/* Is pipe b lvds ? */
		if (gma_crtc->pipe == 1 &&
		    FUNC3(crtc, INTEL_OUTPUT_LVDS)) {
			FUNC1(DSPFW5, 0x00040330);
		} else {
			fw = (3 << DSP_PLANE_B_FIFO_WM1_SHIFT) |
			     (4 << DSP_PLANE_A_FIFO_WM1_SHIFT) |
			     (3 << CURSOR_B_FIFO_WM1_SHIFT) |
			     (4 << CURSOR_FIFO_SR_WM1_SHIFT);
			FUNC1(DSPFW5, fw);
		}

		FUNC1(DSPFW6, 0x10);

		FUNC4(dev);

		/* enable self-refresh for single pipe active */
		FUNC1(FW_BLC_SELF, FW_BLC_SELF_EN);
		FUNC0(FW_BLC_SELF);
		FUNC4(dev);

	} else {

		/* HW team suggested values... */
		FUNC1(DSPFW1, 0x3f880808);
		FUNC1(DSPFW2, 0x0b020202);
		FUNC1(DSPFW3, 0x24000000);
		FUNC1(DSPFW4, 0x08030202);
		FUNC1(DSPFW5, 0x01010101);
		FUNC1(DSPFW6, 0x1d0);

		FUNC4(dev);

		dev_priv->ops->disable_sr(dev);
	}
}