
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct rockchip_drm_private {int fbdev_bo; } ;
struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {int dummy; } ;


 int rockchip_gem_mmap_buf (int ,struct vm_area_struct*) ;
 struct rockchip_drm_private* to_drm_private (struct drm_fb_helper*) ;

__attribute__((used)) static int rockchip_fbdev_mmap(struct fb_info *info,
          struct vm_area_struct *vma)
{
 struct drm_fb_helper *helper = info->par;
 struct rockchip_drm_private *private = to_drm_private(helper);

 return rockchip_gem_mmap_buf(private->fbdev_bo, vma);
}
