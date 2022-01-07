
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int index; int kdev; } ;
struct drm_device {int dummy; } ;


 struct drm_minor** drm_minor_get_slot (struct drm_device*,unsigned int) ;
 int drm_minor_lock ;
 int drm_minors_idr ;
 int idr_remove (int *,int ) ;
 int kfree (struct drm_minor*) ;
 int put_device (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void drm_minor_free(struct drm_device *dev, unsigned int type)
{
 struct drm_minor **slot, *minor;
 unsigned long flags;

 slot = drm_minor_get_slot(dev, type);
 minor = *slot;
 if (!minor)
  return;

 put_device(minor->kdev);

 spin_lock_irqsave(&drm_minor_lock, flags);
 idr_remove(&drm_minors_idr, minor->index);
 spin_unlock_irqrestore(&drm_minor_lock, flags);

 kfree(minor);
 *slot = ((void*)0);
}
