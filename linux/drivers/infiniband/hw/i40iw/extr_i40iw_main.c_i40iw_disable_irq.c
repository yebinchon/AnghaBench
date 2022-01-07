
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_dev {int hw; scalar_t__ is_pf; } ;
struct i40iw_msix_vector {int irq; scalar_t__ idx; } ;


 int I40E_PFINT_DYN_CTLN (scalar_t__) ;
 int I40E_VFINT_DYN_CTLN1 (scalar_t__) ;
 int free_irq (int ,void*) ;
 int i40iw_wr32 (int ,int ,int ) ;
 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void i40iw_disable_irq(struct i40iw_sc_dev *dev,
         struct i40iw_msix_vector *msix_vec,
         void *dev_id)
{
 if (dev->is_pf)
  i40iw_wr32(dev->hw, I40E_PFINT_DYN_CTLN(msix_vec->idx - 1), 0);
 else
  i40iw_wr32(dev->hw, I40E_VFINT_DYN_CTLN1(msix_vec->idx - 1), 0);
 irq_set_affinity_hint(msix_vec->irq, ((void*)0));
 free_irq(msix_vec->irq, dev_id);
}
