
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int aspm_exit (struct hfi1_devdata*) ;
 int finish_chip_resources (struct hfi1_devdata*) ;
 int free_cntrs (struct hfi1_devdata*) ;
 int free_rcverr (struct hfi1_devdata*) ;

void hfi1_start_cleanup(struct hfi1_devdata *dd)
{
 aspm_exit(dd);
 free_cntrs(dd);
 free_rcverr(dd);
 finish_chip_resources(dd);
}
