
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usnic_vnic {int dummy; } ;
struct TYPE_2__ {scalar_t__ devfn; } ;


 TYPE_1__* usnic_vnic_get_pdev (struct usnic_vnic*) ;

u16 usnic_vnic_get_index(struct usnic_vnic *vnic)
{
 return usnic_vnic_get_pdev(vnic)->devfn - 1;
}
