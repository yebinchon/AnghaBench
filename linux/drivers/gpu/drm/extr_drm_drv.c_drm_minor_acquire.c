
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int dev; } ;


 int ENODEV ;
 struct drm_minor* ERR_PTR (int ) ;
 int drm_dev_get (int ) ;
 scalar_t__ drm_dev_is_unplugged (int ) ;
 int drm_dev_put (int ) ;
 int drm_minor_lock ;
 int drm_minors_idr ;
 struct drm_minor* idr_find (int *,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct drm_minor *drm_minor_acquire(unsigned int minor_id)
{
 struct drm_minor *minor;
 unsigned long flags;

 spin_lock_irqsave(&drm_minor_lock, flags);
 minor = idr_find(&drm_minors_idr, minor_id);
 if (minor)
  drm_dev_get(minor->dev);
 spin_unlock_irqrestore(&drm_minor_lock, flags);

 if (!minor) {
  return ERR_PTR(-ENODEV);
 } else if (drm_dev_is_unplugged(minor->dev)) {
  drm_dev_put(minor->dev);
  return ERR_PTR(-ENODEV);
 }

 return minor;
}
