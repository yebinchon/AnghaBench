
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hfi1_devdata {TYPE_1__* pcidev; } ;
typedef int prefix_name ;
typedef int name ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int devfn; TYPE_2__* bus; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 scalar_t__ isalpha (char) ;
 int pci_domain_nr (TYPE_2__*) ;
 int read_efi_var (char*,unsigned long*,void**) ;
 int snprintf (char*,int,char*,...) ;
 char toupper (char) ;

int read_hfi1_efi_var(struct hfi1_devdata *dd, const char *kind,
        unsigned long *size, void **return_data)
{
 char prefix_name[64];
 char name[64];
 int result;
 int i;


 snprintf(prefix_name, sizeof(prefix_name), "%04x:%02x:%02x.%x",
   pci_domain_nr(dd->pcidev->bus),
   dd->pcidev->bus->number,
   PCI_SLOT(dd->pcidev->devfn),
   PCI_FUNC(dd->pcidev->devfn));
 snprintf(name, sizeof(name), "%s-%s", prefix_name, kind);
 result = read_efi_var(name, size, return_data);





 if (result) {

  for (i = 0; prefix_name[i]; i++)
   if (isalpha(prefix_name[i]))
    prefix_name[i] = toupper(prefix_name[i]);
  snprintf(name, sizeof(name), "%s-%s", prefix_name, kind);
  result = read_efi_var(name, size, return_data);
 }

 return result;
}
