
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;
struct TYPE_2__ {struct vfsmount* gemfs; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int PTR_ERR (struct vfsmount*) ;
 struct file_system_type* get_fs_type (char*) ;
 struct vfsmount* kern_mount (struct file_system_type*) ;

int i915_gemfs_init(struct drm_i915_private *i915)
{
 struct file_system_type *type;
 struct vfsmount *gemfs;

 type = get_fs_type("tmpfs");
 if (!type)
  return -ENODEV;
 gemfs = kern_mount(type);
 if (IS_ERR(gemfs))
  return PTR_ERR(gemfs);

 i915->mm.gemfs = gemfs;

 return 0;
}
