
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int led_override_timer_active; int led_override_timer; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int DCC_CFG_LED_CNTRL ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int del_timer_sync (int *) ;
 int smp_rmb () ;
 int smp_wmb () ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

void shutdown_led_override(struct hfi1_pportdata *ppd)
{
 struct hfi1_devdata *dd = ppd->dd;






 smp_rmb();
 if (atomic_read(&ppd->led_override_timer_active)) {
  del_timer_sync(&ppd->led_override_timer);
  atomic_set(&ppd->led_override_timer_active, 0);

  smp_wmb();
 }


 write_csr(dd, DCC_CFG_LED_CNTRL, 0);
}
