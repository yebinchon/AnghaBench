
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vesws; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;


 int WARN_ON (int) ;
 int xa_empty (int *) ;

void hfi1_vnic_cleanup(struct hfi1_devdata *dd)
{
 WARN_ON(!xa_empty(&dd->vnic.vesws));
}
