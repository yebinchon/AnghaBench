
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mapping; } ;
struct drm_minor {struct drm_device* dev; } ;
struct drm_device {int open_count; TYPE_1__* anon_inode; } ;
struct TYPE_2__ {int i_mapping; } ;


 scalar_t__ IS_ERR (struct drm_minor*) ;
 int PTR_ERR (struct drm_minor*) ;
 int drm_close_helper (struct file*) ;
 int drm_legacy_setup (struct drm_device*) ;
 struct drm_minor* drm_minor_acquire (int ) ;
 int drm_minor_release (struct drm_minor*) ;
 int drm_open_helper (struct file*,struct drm_minor*) ;
 int iminor (struct inode*) ;

int drm_open(struct inode *inode, struct file *filp)
{
 struct drm_device *dev;
 struct drm_minor *minor;
 int retcode;
 int need_setup = 0;

 minor = drm_minor_acquire(iminor(inode));
 if (IS_ERR(minor))
  return PTR_ERR(minor);

 dev = minor->dev;
 if (!dev->open_count++)
  need_setup = 1;


 filp->f_mapping = dev->anon_inode->i_mapping;

 retcode = drm_open_helper(filp, minor);
 if (retcode)
  goto err_undo;
 if (need_setup) {
  retcode = drm_legacy_setup(dev);
  if (retcode) {
   drm_close_helper(filp);
   goto err_undo;
  }
 }
 return 0;

err_undo:
 dev->open_count--;
 drm_minor_release(minor);
 return retcode;
}
