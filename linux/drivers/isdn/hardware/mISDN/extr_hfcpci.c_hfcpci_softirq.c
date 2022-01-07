
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
typedef scalar_t__ s32 ;
struct TYPE_5__ {int driver; } ;
struct TYPE_4__ {scalar_t__ expires; } ;


 int WARN_ON_ONCE (int) ;
 int _hfcpci_softirq ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ driver_for_each_device (int *,int *,int *,int ) ;
 TYPE_2__ hfc_driver ;
 scalar_t__ hfc_jiffies ;
 TYPE_1__ hfc_tl ;
 scalar_t__ jiffies ;
 scalar_t__ tics ;

__attribute__((used)) static void
hfcpci_softirq(struct timer_list *unused)
{
 WARN_ON_ONCE(driver_for_each_device(&hfc_driver.driver, ((void*)0), ((void*)0),
          _hfcpci_softirq) != 0);


 if ((s32)(hfc_jiffies + tics - jiffies) <= 0)
  hfc_jiffies = jiffies + 1;
 else
  hfc_jiffies += tics;
 hfc_tl.expires = hfc_jiffies;
 add_timer(&hfc_tl);
}
