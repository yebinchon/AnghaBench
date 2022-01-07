
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgem_file {int dummy; } ;
struct drm_file {struct vgem_file* driver_priv; } ;
struct drm_device {int dummy; } ;


 int kfree (struct vgem_file*) ;
 int vgem_fence_close (struct vgem_file*) ;

__attribute__((used)) static void vgem_postclose(struct drm_device *dev, struct drm_file *file)
{
 struct vgem_file *vfile = file->driver_priv;

 vgem_fence_close(vfile);
 kfree(vfile);
}
