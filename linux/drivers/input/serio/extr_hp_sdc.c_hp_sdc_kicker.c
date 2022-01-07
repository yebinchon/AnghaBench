
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int kicker; int task; } ;


 scalar_t__ HZ ;
 TYPE_1__ hp_sdc ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void hp_sdc_kicker(struct timer_list *unused)
{
 tasklet_schedule(&hp_sdc.task);

 mod_timer(&hp_sdc.kicker, jiffies + HZ);
}
