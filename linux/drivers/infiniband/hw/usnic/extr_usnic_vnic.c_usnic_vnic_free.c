
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_vnic {int dummy; } ;


 int kfree (struct usnic_vnic*) ;
 int usnic_vnic_release_resources (struct usnic_vnic*) ;

void usnic_vnic_free(struct usnic_vnic *vnic)
{
 usnic_vnic_release_resources(vnic);
 kfree(vnic);
}
