
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int accel_pci_dev; } ;


 int adf_cleanup_bh (struct adf_accel_dev*) ;
 int adf_disable_msix (int *) ;
 int adf_free_irqs (struct adf_accel_dev*) ;
 int adf_isr_free_msix_entry_table (struct adf_accel_dev*) ;

void adf_isr_resource_free(struct adf_accel_dev *accel_dev)
{
 adf_free_irqs(accel_dev);
 adf_cleanup_bh(accel_dev);
 adf_disable_msix(&accel_dev->accel_pci_dev);
 adf_isr_free_msix_entry_table(accel_dev);
}
