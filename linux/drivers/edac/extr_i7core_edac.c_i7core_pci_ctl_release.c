
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i7core_pvt {int * i7core_pci; TYPE_1__* i7core_dev; } ;
struct TYPE_2__ {int socket; } ;


 int KERN_ERR ;
 int edac_pci_release_generic_ctl (int *) ;
 int i7core_printk (int ,char*,int ) ;
 scalar_t__ likely (int *) ;

__attribute__((used)) static void i7core_pci_ctl_release(struct i7core_pvt *pvt)
{
 if (likely(pvt->i7core_pci))
  edac_pci_release_generic_ctl(pvt->i7core_pci);
 else
  i7core_printk(KERN_ERR,
    "Couldn't find mem_ctl_info for socket %d\n",
    pvt->i7core_dev->socket);
 pvt->i7core_pci = ((void*)0);
}
