
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int __pmu_backlight_update_status (struct backlight_device*) ;
 int pmu_backlight_lock ;
 int sleeping ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pmu_backlight_update_status(struct backlight_device *bd)
{
 unsigned long flags;
 int rc = 0;

 spin_lock_irqsave(&pmu_backlight_lock, flags);

 if (!sleeping)
  rc = __pmu_backlight_update_status(bd);
 spin_unlock_irqrestore(&pmu_backlight_lock, flags);
 return rc;
}
