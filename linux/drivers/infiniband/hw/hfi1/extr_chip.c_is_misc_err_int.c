
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;
struct err_reg_info {scalar_t__ handler; } ;


 int dd_dev_err (struct hfi1_devdata*,char*,unsigned int) ;
 int interrupt_clear_down (struct hfi1_devdata*,int ,struct err_reg_info const*) ;
 struct err_reg_info* misc_errs ;

__attribute__((used)) static void is_misc_err_int(struct hfi1_devdata *dd, unsigned int source)
{
 const struct err_reg_info *eri = &misc_errs[source];

 if (eri->handler) {
  interrupt_clear_down(dd, 0, eri);
 } else {
  dd_dev_err(dd, "Unexpected misc interrupt (%u) - reserved\n",
      source);
 }
}
