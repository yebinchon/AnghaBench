
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ls_scfg_msi {int parent; TYPE_1__* pdev; int msi_domain; int irqs_num; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int ENOMEM ;
 int dev_err (TYPE_2__*,char*) ;
 int irq_domain_add_linear (int *,int ,int *,struct ls_scfg_msi*) ;
 int irq_domain_remove (int ) ;
 int ls_scfg_msi_domain_info ;
 int ls_scfg_msi_domain_ops ;
 int of_node_to_fwnode (int ) ;
 int pci_msi_create_irq_domain (int ,int *,int ) ;

__attribute__((used)) static int ls_scfg_msi_domains_init(struct ls_scfg_msi *msi_data)
{

 msi_data->parent = irq_domain_add_linear(((void*)0),
       msi_data->irqs_num,
       &ls_scfg_msi_domain_ops,
       msi_data);
 if (!msi_data->parent) {
  dev_err(&msi_data->pdev->dev, "failed to create IRQ domain\n");
  return -ENOMEM;
 }

 msi_data->msi_domain = pci_msi_create_irq_domain(
    of_node_to_fwnode(msi_data->pdev->dev.of_node),
    &ls_scfg_msi_domain_info,
    msi_data->parent);
 if (!msi_data->msi_domain) {
  dev_err(&msi_data->pdev->dev, "failed to create MSI domain\n");
  irq_domain_remove(msi_data->parent);
  return -ENOMEM;
 }

 return 0;
}
