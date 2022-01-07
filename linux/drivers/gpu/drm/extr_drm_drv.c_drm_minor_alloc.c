
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {unsigned int type; int index; int kdev; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct drm_minor** drm_minor_get_slot (struct drm_device*,unsigned int) ;
 int drm_minor_lock ;
 int drm_minors_idr ;
 int drm_sysfs_minor_alloc (struct drm_minor*) ;
 int idr_alloc (int *,int *,int,int,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 int kfree (struct drm_minor*) ;
 struct drm_minor* kzalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int drm_minor_alloc(struct drm_device *dev, unsigned int type)
{
 struct drm_minor *minor;
 unsigned long flags;
 int r;

 minor = kzalloc(sizeof(*minor), GFP_KERNEL);
 if (!minor)
  return -ENOMEM;

 minor->type = type;
 minor->dev = dev;

 idr_preload(GFP_KERNEL);
 spin_lock_irqsave(&drm_minor_lock, flags);
 r = idr_alloc(&drm_minors_idr,
        ((void*)0),
        64 * type,
        64 * (type + 1),
        GFP_NOWAIT);
 spin_unlock_irqrestore(&drm_minor_lock, flags);
 idr_preload_end();

 if (r < 0)
  goto err_free;

 minor->index = r;

 minor->kdev = drm_sysfs_minor_alloc(minor);
 if (IS_ERR(minor->kdev)) {
  r = PTR_ERR(minor->kdev);
  goto err_index;
 }

 *drm_minor_get_slot(dev, type) = minor;
 return 0;

err_index:
 spin_lock_irqsave(&drm_minor_lock, flags);
 idr_remove(&drm_minors_idr, minor->index);
 spin_unlock_irqrestore(&drm_minor_lock, flags);
err_free:
 kfree(minor);
 return r;
}
