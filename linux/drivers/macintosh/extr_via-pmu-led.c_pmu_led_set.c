
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_3__ {scalar_t__ complete; } ;




 int pmu_blink_lock ;
 TYPE_1__ pmu_blink_req ;
 int pmu_request (TYPE_1__*,int *,int,int,int,int ,int) ;
 int pmu_sys_suspended ;
 int requested_change ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pmu_led_set(struct led_classdev *led_cdev,
   enum led_brightness brightness)
{
 unsigned long flags;

 spin_lock_irqsave(&pmu_blink_lock, flags);
 switch (brightness) {
 case 128:
  requested_change = 0;
  break;
 case 129:
  requested_change = 1;
  break;
 default:
  goto out;
  break;
 }

 if (pmu_blink_req.complete && !pmu_sys_suspended)
  pmu_request(&pmu_blink_req, ((void*)0), 4, 0xee, 4, 0, requested_change);
 out:
  spin_unlock_irqrestore(&pmu_blink_lock, flags);
}
