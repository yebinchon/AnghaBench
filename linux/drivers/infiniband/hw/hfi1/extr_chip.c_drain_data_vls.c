
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int pause_for_credit_return (struct hfi1_devdata*) ;
 int sc_wait (struct hfi1_devdata*) ;
 int sdma_wait (struct hfi1_devdata*) ;

__attribute__((used)) static void drain_data_vls(struct hfi1_devdata *dd)
{
 sc_wait(dd);
 sdma_wait(dd);
 pause_for_credit_return(dd);
}
