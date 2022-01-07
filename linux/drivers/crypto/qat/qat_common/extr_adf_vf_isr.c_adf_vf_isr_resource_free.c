
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct adf_accel_dev {int dummy; } ;


 struct pci_dev* accel_to_pci_dev (struct adf_accel_dev*) ;
 int adf_cleanup_bh (struct adf_accel_dev*) ;
 int adf_cleanup_pf2vf_bh (struct adf_accel_dev*) ;
 int adf_disable_msi (struct adf_accel_dev*) ;
 int free_irq (int ,void*) ;
 int irq_set_affinity_hint (int ,int *) ;

void adf_vf_isr_resource_free(struct adf_accel_dev *accel_dev)
{
 struct pci_dev *pdev = accel_to_pci_dev(accel_dev);

 irq_set_affinity_hint(pdev->irq, ((void*)0));
 free_irq(pdev->irq, (void *)accel_dev);
 adf_cleanup_bh(accel_dev);
 adf_cleanup_pf2vf_bh(accel_dev);
 adf_disable_msi(accel_dev);
}
