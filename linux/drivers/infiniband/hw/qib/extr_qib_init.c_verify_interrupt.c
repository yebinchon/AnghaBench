
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct timer_list {int dummy; } ;
struct qib_devdata {scalar_t__ z_int_counter; int intrchk_timer; TYPE_1__* pcidev; int (* f_intr_fallback ) (struct qib_devdata*) ;} ;
struct TYPE_2__ {int dev; } ;


 int HZ ;
 struct qib_devdata* dd ;
 int dev_err (int *,char*) ;
 struct qib_devdata* from_timer (int ,struct timer_list*,int ) ;
 int intrchk_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ qib_int_counter (struct qib_devdata*) ;
 int stub1 (struct qib_devdata*) ;

__attribute__((used)) static void verify_interrupt(struct timer_list *t)
{
 struct qib_devdata *dd = from_timer(dd, t, intrchk_timer);
 u64 int_counter;

 if (!dd)
  return;





 int_counter = qib_int_counter(dd) - dd->z_int_counter;
 if (int_counter == 0) {
  if (!dd->f_intr_fallback(dd))
   dev_err(&dd->pcidev->dev,
    "No interrupts detected, not usable.\n");
  else
   mod_timer(&dd->intrchk_timer, jiffies + HZ/2);
 }
}
