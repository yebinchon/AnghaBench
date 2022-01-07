
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgem_file {int dummy; } ;
struct drm_file {struct vgem_file* driver_priv; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct vgem_file*) ;
 struct vgem_file* kzalloc (int,int ) ;
 int vgem_fence_open (struct vgem_file*) ;

__attribute__((used)) static int vgem_open(struct drm_device *dev, struct drm_file *file)
{
 struct vgem_file *vfile;
 int ret;

 vfile = kzalloc(sizeof(*vfile), GFP_KERNEL);
 if (!vfile)
  return -ENOMEM;

 file->driver_priv = vfile;

 ret = vgem_fence_open(vfile);
 if (ret) {
  kfree(vfile);
  return ret;
 }

 return 0;
}
