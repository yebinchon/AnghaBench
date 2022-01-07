
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct vc4_dev {TYPE_1__ hangcheck; } ;
struct drm_device {int dummy; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int round_jiffies_up (scalar_t__) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void
vc4_queue_hangcheck(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 mod_timer(&vc4->hangcheck.timer,
    round_jiffies_up(jiffies + msecs_to_jiffies(100)));
}
