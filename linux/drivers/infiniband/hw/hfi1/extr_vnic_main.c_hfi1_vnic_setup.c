
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vesws; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;


 int xa_init (int *) ;

void hfi1_vnic_setup(struct hfi1_devdata *dd)
{
 xa_init(&dd->vnic.vesws);
}
