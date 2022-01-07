
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int dummy; } ;


 struct sp_device* sp_dev_master ;
 scalar_t__ sp_pci_is_master (struct sp_device*) ;

__attribute__((used)) static void psp_set_master(struct sp_device *sp)
{
 if (!sp_dev_master) {
  sp_dev_master = sp;
  return;
 }

 if (sp_pci_is_master(sp))
  sp_dev_master = sp;
}
