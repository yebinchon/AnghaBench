
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int kdev; int index; } ;
struct drm_device {int dummy; } ;


 int dev_set_drvdata (int ,int *) ;
 int device_del (int ) ;
 int device_is_registered (int ) ;
 int drm_debugfs_cleanup (struct drm_minor*) ;
 struct drm_minor** drm_minor_get_slot (struct drm_device*,unsigned int) ;
 int drm_minor_lock ;
 int drm_minors_idr ;
 int idr_replace (int *,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void drm_minor_unregister(struct drm_device *dev, unsigned int type)
{
 struct drm_minor *minor;
 unsigned long flags;

 minor = *drm_minor_get_slot(dev, type);
 if (!minor || !device_is_registered(minor->kdev))
  return;


 spin_lock_irqsave(&drm_minor_lock, flags);
 idr_replace(&drm_minors_idr, ((void*)0), minor->index);
 spin_unlock_irqrestore(&drm_minor_lock, flags);

 device_del(minor->kdev);
 dev_set_drvdata(minor->kdev, ((void*)0));
 drm_debugfs_cleanup(minor);
}
