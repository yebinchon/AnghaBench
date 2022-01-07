
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;
struct err_reg_info {scalar_t__ handler; } ;


 struct err_reg_info* dc_errs ;
 int dd_dev_err (struct hfi1_devdata*,char*,...) ;
 int interrupt_clear_down (struct hfi1_devdata*,int ,struct err_reg_info const*) ;

__attribute__((used)) static void is_dc_int(struct hfi1_devdata *dd, unsigned int source)
{
 const struct err_reg_info *eri = &dc_errs[source];

 if (eri->handler) {
  interrupt_clear_down(dd, 0, eri);
 } else if (source == 3 ) {
  dd_dev_err(dd, "Parity error in DC LBM block\n");
 } else {
  dd_dev_err(dd, "Invalid DC interrupt %u\n", source);
 }
}
