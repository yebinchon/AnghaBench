
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_vnic {int dummy; } ;


 char const* pci_name (int ) ;
 int usnic_vnic_get_pdev (struct usnic_vnic*) ;

const char *usnic_vnic_pci_name(struct usnic_vnic *vnic)
{
 return pci_name(usnic_vnic_get_pdev(vnic));
}
