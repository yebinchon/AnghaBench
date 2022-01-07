
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40iw_sc_dev {int hw; scalar_t__ is_pf; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40E_PFPE_AEQALLOC ;
 int I40E_VFPE_AEQALLOC1 ;
 int i40iw_wr32 (int ,int ,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_repost_aeq_entries(struct i40iw_sc_dev *dev,
         u32 count)
{

 if (dev->is_pf)
  i40iw_wr32(dev->hw, I40E_PFPE_AEQALLOC, count);
 else
  i40iw_wr32(dev->hw, I40E_VFPE_AEQALLOC1, count);

 return 0;
}
