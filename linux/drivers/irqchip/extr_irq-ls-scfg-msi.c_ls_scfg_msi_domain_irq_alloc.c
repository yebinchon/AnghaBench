
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ls_scfg_msi {int irqs_num; int msiir_addr; int lock; int used; } ;
struct irq_domain {struct ls_scfg_msi* host_data; } ;
struct TYPE_2__ {int desc; } ;
typedef TYPE_1__ msi_alloc_info_t ;


 int ENOSPC ;
 int WARN_ON (int) ;
 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int) ;
 int handle_simple_irq ;
 int iommu_dma_prepare_msi (int ,int ) ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int,int *,struct ls_scfg_msi*,int ,int *,int *) ;
 int ls_scfg_msi_parent_chip ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ls_scfg_msi_domain_irq_alloc(struct irq_domain *domain,
     unsigned int virq,
     unsigned int nr_irqs,
     void *args)
{
 msi_alloc_info_t *info = args;
 struct ls_scfg_msi *msi_data = domain->host_data;
 int pos, err = 0;

 WARN_ON(nr_irqs != 1);

 spin_lock(&msi_data->lock);
 pos = find_first_zero_bit(msi_data->used, msi_data->irqs_num);
 if (pos < msi_data->irqs_num)
  __set_bit(pos, msi_data->used);
 else
  err = -ENOSPC;
 spin_unlock(&msi_data->lock);

 if (err)
  return err;

 err = iommu_dma_prepare_msi(info->desc, msi_data->msiir_addr);
 if (err)
  return err;

 irq_domain_set_info(domain, virq, pos,
       &ls_scfg_msi_parent_chip, msi_data,
       handle_simple_irq, ((void*)0), ((void*)0));

 return 0;
}
