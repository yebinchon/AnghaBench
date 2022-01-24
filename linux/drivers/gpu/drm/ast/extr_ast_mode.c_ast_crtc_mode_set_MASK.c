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
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct ast_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct ast_vbios_mode_info {int dummy; } ;
struct ast_private {scalar_t__ chip; } ;

/* Variables and functions */
 scalar_t__ AST1180 ; 
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int,int,struct drm_framebuffer*) ; 
 int FUNC2 (struct drm_crtc*,struct drm_display_mode*,struct drm_display_mode*,struct ast_vbios_mode_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ast_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,struct drm_display_mode*,struct ast_vbios_mode_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,struct drm_display_mode*,struct ast_vbios_mode_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_display_mode*,struct ast_vbios_mode_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,struct drm_display_mode*,struct ast_vbios_mode_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct ast_private*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_crtc*,struct drm_display_mode*,struct ast_vbios_mode_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,struct drm_display_mode*,struct ast_vbios_mode_info*) ; 

__attribute__((used)) static int FUNC12(struct drm_crtc *crtc,
			     struct drm_display_mode *mode,
			     struct drm_display_mode *adjusted_mode,
			     int x, int y,
			     struct drm_framebuffer *old_fb)
{
	struct drm_device *dev = crtc->dev;
	struct ast_private *ast = crtc->dev->dev_private;
	struct ast_vbios_mode_info vbios_mode;
	bool ret;
	if (ast->chip == AST1180) {
		FUNC0("AST 1180 modesetting not supported\n");
		return -EINVAL;
	}

	ret = FUNC2(crtc, mode, adjusted_mode, &vbios_mode);
	if (ret == false)
		return -EINVAL;
	FUNC3(ast);

	FUNC8(ast, AST_IO_CRTC_PORT, 0xa1, 0x06);

	FUNC10(crtc, adjusted_mode, &vbios_mode);
	FUNC4(crtc, adjusted_mode, &vbios_mode);
	FUNC9(crtc);
	FUNC6(dev, adjusted_mode, &vbios_mode);
	FUNC7(crtc, adjusted_mode, &vbios_mode);
	FUNC11(dev, adjusted_mode, &vbios_mode);
	FUNC5(crtc, adjusted_mode, &vbios_mode);

	FUNC1(crtc, x, y, old_fb);

	return 0;
}