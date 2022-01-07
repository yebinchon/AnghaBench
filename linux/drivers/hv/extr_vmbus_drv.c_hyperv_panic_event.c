
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 struct pt_regs* current_pt_regs () ;
 int hyperv_report_panic (struct pt_regs*,unsigned long) ;

__attribute__((used)) static int hyperv_panic_event(struct notifier_block *nb, unsigned long val,
         void *args)
{
 struct pt_regs *regs;

 regs = current_pt_regs();

 hyperv_report_panic(regs, val);
 return NOTIFY_DONE;
}
