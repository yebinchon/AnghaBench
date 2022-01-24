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
struct fsl_dcu_drm_device {int /*<<< orphan*/  pix_clk; int /*<<< orphan*/  regmap; } ;
struct drm_device {struct fsl_dcu_drm_device* dev_private; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCU_DCU_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCU_MODE_DCU_MODE_MASK ; 
 int /*<<< orphan*/  DCU_MODE_OFF ; 
 int /*<<< orphan*/  DCU_UPDATE_MODE ; 
 int /*<<< orphan*/  DCU_UPDATE_MODE_READREG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
					struct drm_crtc_state *old_crtc_state)
{
	struct drm_device *dev = crtc->dev;
	struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;

	/* always disable planes on the CRTC */
	FUNC2(old_crtc_state, true);

	FUNC3(crtc);

	FUNC4(fsl_dev->regmap, DCU_DCU_MODE,
			   DCU_MODE_DCU_MODE_MASK,
			   FUNC0(DCU_MODE_OFF));
	FUNC5(fsl_dev->regmap, DCU_UPDATE_MODE,
		     DCU_UPDATE_MODE_READREG);
	FUNC1(fsl_dev->pix_clk);
}