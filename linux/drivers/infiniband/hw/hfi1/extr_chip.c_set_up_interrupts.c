
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int IS_FIRST_SOURCE ;
 int IS_LAST_SOURCE ;
 int clear_all_interrupts (struct hfi1_devdata*) ;
 int msix_clean_up_interrupts (struct hfi1_devdata*) ;
 int msix_initialize (struct hfi1_devdata*) ;
 int msix_request_irqs (struct hfi1_devdata*) ;
 int reset_interrupts (struct hfi1_devdata*) ;
 int set_intr_bits (struct hfi1_devdata*,int ,int ,int) ;

__attribute__((used)) static int set_up_interrupts(struct hfi1_devdata *dd)
{
 int ret;


 set_intr_bits(dd, IS_FIRST_SOURCE, IS_LAST_SOURCE, 0);


 clear_all_interrupts(dd);


 reset_interrupts(dd);


 ret = msix_initialize(dd);
 if (ret)
  return ret;

 ret = msix_request_irqs(dd);
 if (ret)
  msix_clean_up_interrupts(dd);

 return ret;
}
