
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct adapter_info {int ch_num; TYPE_1__* pch_data; } ;
struct TYPE_2__ {int * pch_base_address; int pch_adapter; } ;


 int free_irq (int ,struct adapter_info*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct adapter_info*) ;
 int pch_i2c_disbl_int (TYPE_1__*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct adapter_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int *) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void pch_i2c_remove(struct pci_dev *pdev)
{
 int i;
 struct adapter_info *adap_info = pci_get_drvdata(pdev);

 free_irq(pdev->irq, adap_info);

 for (i = 0; i < adap_info->ch_num; i++) {
  pch_i2c_disbl_int(&adap_info->pch_data[i]);
  i2c_del_adapter(&adap_info->pch_data[i].pch_adapter);
 }

 if (adap_info->pch_data[0].pch_base_address)
  pci_iounmap(pdev, adap_info->pch_data[0].pch_base_address);

 for (i = 0; i < adap_info->ch_num; i++)
  adap_info->pch_data[i].pch_base_address = ((void*)0);

 pci_release_regions(pdev);

 pci_disable_device(pdev);
 kfree(adap_info);
}
