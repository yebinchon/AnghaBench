
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msix_entry {int vector; } ;
struct adf_hw_device_data {int num_banks; } ;
struct adf_etr_data {struct adf_accel_dev* banks; } ;
struct TYPE_2__ {int num_entries; struct msix_entry* entries; } ;
struct adf_accel_pci {TYPE_1__ msix_entries; } ;
struct adf_accel_dev {struct adf_etr_data* transport; struct adf_hw_device_data* hw_device; struct adf_accel_pci accel_pci_dev; } ;


 int free_irq (int ,struct adf_accel_dev*) ;
 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void adf_free_irqs(struct adf_accel_dev *accel_dev)
{
 struct adf_accel_pci *pci_dev_info = &accel_dev->accel_pci_dev;
 struct adf_hw_device_data *hw_data = accel_dev->hw_device;
 struct msix_entry *msixe = pci_dev_info->msix_entries.entries;
 struct adf_etr_data *etr_data = accel_dev->transport;
 int i = 0;

 if (pci_dev_info->msix_entries.num_entries > 1) {
  for (i = 0; i < hw_data->num_banks; i++) {
   irq_set_affinity_hint(msixe[i].vector, ((void*)0));
   free_irq(msixe[i].vector, &etr_data->banks[i]);
  }
 }
 irq_set_affinity_hint(msixe[i].vector, ((void*)0));
 free_irq(msixe[i].vector, accel_dev);
}
