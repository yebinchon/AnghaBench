
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;
struct err_reg_info {int mask; int desc; int (* handler ) (struct hfi1_devdata*,scalar_t__,scalar_t__) ;int clear; int status; } ;


 scalar_t__ MAX_CLEAR_COUNT ;
 int dd_dev_err (struct hfi1_devdata*,char*,int ,scalar_t__) ;
 scalar_t__ likely (int (*) (struct hfi1_devdata*,scalar_t__,scalar_t__)) ;
 scalar_t__ read_kctxt_csr (struct hfi1_devdata*,scalar_t__,int ) ;
 int stub1 (struct hfi1_devdata*,scalar_t__,scalar_t__) ;
 int write_kctxt_csr (struct hfi1_devdata*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void interrupt_clear_down(struct hfi1_devdata *dd,
     u32 context,
     const struct err_reg_info *eri)
{
 u64 reg;
 u32 count;


 count = 0;
 while (1) {
  reg = read_kctxt_csr(dd, context, eri->status);
  if (reg == 0)
   break;
  write_kctxt_csr(dd, context, eri->clear, reg);
  if (likely(eri->handler))
   eri->handler(dd, context, reg);
  count++;
  if (count > MAX_CLEAR_COUNT) {
   u64 mask;

   dd_dev_err(dd, "Repeating %s bits 0x%llx - masking\n",
       eri->desc, reg);




   mask = read_kctxt_csr(dd, context, eri->mask);
   mask &= ~reg;
   write_kctxt_csr(dd, context, eri->mask, mask);
   break;
  }
 }
}
