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
struct vm_area_struct {int dummy; } ;
struct rockchip_drm_private {int /*<<< orphan*/  fbdev_bo; } ;
struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 struct rockchip_drm_private* FUNC1 (struct drm_fb_helper*) ; 

__attribute__((used)) static int FUNC2(struct fb_info *info,
			       struct vm_area_struct *vma)
{
	struct drm_fb_helper *helper = info->par;
	struct rockchip_drm_private *private = FUNC1(helper);

	return FUNC0(private->fbdev_bo, vma);
}