
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long long u64 ;
typedef scalar_t__ u32 ;
struct qib_devdata {int flags; TYPE_1__* cspec; } ;
struct TYPE_2__ {unsigned long long int_enable_mask; scalar_t__ num_msix_entries; } ;


 int QIB_BADINTR ;
 int kr_intclear ;
 int kr_intgranted ;
 int kr_intmask ;
 long long qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,unsigned long long) ;

__attribute__((used)) static void qib_7322_set_intr_state(struct qib_devdata *dd, u32 enable)
{
 if (enable) {
  if (dd->flags & QIB_BADINTR)
   return;
  qib_write_kreg(dd, kr_intmask, dd->cspec->int_enable_mask);

  qib_write_kreg(dd, kr_intclear, 0ULL);
  if (dd->cspec->num_msix_entries) {

   u64 val = qib_read_kreg64(dd, kr_intgranted);

   if (val)
    qib_write_kreg(dd, kr_intgranted, val);
  }
 } else
  qib_write_kreg(dd, kr_intmask, 0ULL);
}
