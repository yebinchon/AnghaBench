#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct videomode {int flags; int /*<<< orphan*/  hactive; int /*<<< orphan*/  vactive; int /*<<< orphan*/  vfront_porch; int /*<<< orphan*/  vsync_len; int /*<<< orphan*/  vback_porch; int /*<<< orphan*/  hfront_porch; int /*<<< orphan*/  hsync_len; int /*<<< orphan*/  hback_porch; } ;
struct TYPE_6__ {int bus_flags; } ;
struct drm_connector {TYPE_3__ display_info; } ;
struct TYPE_4__ {struct drm_connector base; } ;
struct fsl_dcu_drm_device {int /*<<< orphan*/  regmap; int /*<<< orphan*/  pix_clk; TYPE_1__ connector; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {struct fsl_dcu_drm_device* dev_private; } ;
struct drm_crtc {TYPE_2__* state; struct drm_device* dev; } ;
struct TYPE_5__ {struct drm_display_mode mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BF_VS_VAL ; 
 int /*<<< orphan*/  BUF_MAX_VAL ; 
 int /*<<< orphan*/  BUF_MIN_VAL ; 
 int /*<<< orphan*/  DCU_BGND ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCU_DCU_MODE ; 
 int /*<<< orphan*/  DCU_DISP_SIZE ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCU_HSYN_PARA ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int) ; 
 unsigned int DCU_MODE_RASTER_EN ; 
 int /*<<< orphan*/  DCU_SYN_POL ; 
 unsigned int DCU_SYN_POL_INV_HS_LOW ; 
 unsigned int DCU_SYN_POL_INV_PXCK ; 
 unsigned int DCU_SYN_POL_INV_VS_LOW ; 
 int /*<<< orphan*/  DCU_THRESHOLD ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCU_VSYN_PARA ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ) ; 
 int DISPLAY_FLAGS_HSYNC_LOW ; 
 int DISPLAY_FLAGS_VSYNC_LOW ; 
 int DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_display_mode*,struct videomode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC18(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;
	struct drm_connector *con = &fsl_dev->connector.base;
	struct drm_display_mode *mode = &crtc->state->mode;
	unsigned int pol = 0;
	struct videomode vm;

	FUNC15(fsl_dev->pix_clk, mode->clock * 1000);

	FUNC16(mode, &vm);

	/* INV_PXCK as default (most display sample data on rising edge) */
	if (!(con->display_info.bus_flags & DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE))
		pol |= DCU_SYN_POL_INV_PXCK;

	if (vm.flags & DISPLAY_FLAGS_HSYNC_LOW)
		pol |= DCU_SYN_POL_INV_HS_LOW;

	if (vm.flags & DISPLAY_FLAGS_VSYNC_LOW)
		pol |= DCU_SYN_POL_INV_VS_LOW;

	FUNC17(fsl_dev->regmap, DCU_HSYN_PARA,
		     FUNC5(vm.hback_porch) |
		     FUNC7(vm.hsync_len) |
		     FUNC6(vm.hfront_porch));
	FUNC17(fsl_dev->regmap, DCU_VSYN_PARA,
		     FUNC12(vm.vback_porch) |
		     FUNC14(vm.vsync_len) |
		     FUNC13(vm.vfront_porch));
	FUNC17(fsl_dev->regmap, DCU_DISP_SIZE,
		     FUNC4(vm.vactive) |
		     FUNC3(vm.hactive));
	FUNC17(fsl_dev->regmap, DCU_SYN_POL, pol);
	FUNC17(fsl_dev->regmap, DCU_BGND, FUNC2(0) |
		     FUNC1(0) | FUNC0(0));
	FUNC17(fsl_dev->regmap, DCU_DCU_MODE,
		     FUNC8(1) | DCU_MODE_RASTER_EN);
	FUNC17(fsl_dev->regmap, DCU_THRESHOLD,
		     FUNC9(BF_VS_VAL) |
		     FUNC10(BUF_MAX_VAL) |
		     FUNC11(BUF_MIN_VAL));
	return;
}