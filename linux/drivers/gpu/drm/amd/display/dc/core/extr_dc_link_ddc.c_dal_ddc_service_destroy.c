
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int destruct (struct ddc_service*) ;
 int kfree (struct ddc_service*) ;

void dal_ddc_service_destroy(struct ddc_service **ddc)
{
 if (!ddc || !*ddc) {
  BREAK_TO_DEBUGGER();
  return;
 }
 destruct(*ddc);
 kfree(*ddc);
 *ddc = ((void*)0);
}
