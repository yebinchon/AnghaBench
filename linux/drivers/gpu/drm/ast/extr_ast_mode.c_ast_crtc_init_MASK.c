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
struct drm_device {int dummy; } ;
struct ast_crtc {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ast_crtc_funcs ; 
 int /*<<< orphan*/  ast_crtc_helper_funcs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct ast_crtc* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev)
{
	struct ast_crtc *crtc;

	crtc = FUNC3(sizeof(struct ast_crtc), GFP_KERNEL);
	if (!crtc)
		return -ENOMEM;

	FUNC1(dev, &crtc->base, &ast_crtc_funcs);
	FUNC2(&crtc->base, 256);
	FUNC0(&crtc->base, &ast_crtc_helper_funcs);
	return 0;
}