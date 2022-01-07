
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40iw_sc_dev {int hw; scalar_t__ is_pf; } ;


 int I40E_PFINT_DYN_CTLN (int) ;
 int I40E_PFINT_DYN_CTLN_CLEARPBA_MASK ;
 int I40E_PFINT_DYN_CTLN_INTENA_MASK ;
 int I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT ;
 int I40E_VFINT_DYN_CTLN1 (int) ;
 int i40iw_wr32 (int ,int ,int) ;

__attribute__((used)) static void i40iw_enable_intr(struct i40iw_sc_dev *dev, u32 msix_id)
{
 u32 val;

 val = I40E_PFINT_DYN_CTLN_INTENA_MASK |
  I40E_PFINT_DYN_CTLN_CLEARPBA_MASK |
  (3 << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT);
 if (dev->is_pf)
  i40iw_wr32(dev->hw, I40E_PFINT_DYN_CTLN(msix_id - 1), val);
 else
  i40iw_wr32(dev->hw, I40E_VFINT_DYN_CTLN1(msix_id - 1), val);
}
