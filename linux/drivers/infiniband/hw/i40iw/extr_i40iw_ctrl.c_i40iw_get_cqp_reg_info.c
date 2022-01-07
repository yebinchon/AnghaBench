
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40iw_sc_cqp {TYPE_1__* dev; } ;
struct TYPE_2__ {int hw; scalar_t__ is_pf; } ;


 int I40E_PFPE_CQPTAIL ;
 int I40E_PFPE_CQPTAIL_CQP_OP_ERR ;
 int I40E_PFPE_CQPTAIL_WQTAIL ;
 int I40E_VFPE_CQPTAIL1 ;
 int I40E_VFPE_CQPTAIL_CQP_OP_ERR ;
 int I40E_VFPE_CQPTAIL_WQTAIL ;
 int RS_32 (int ,int ) ;
 int i40iw_rd32 (int ,int ) ;

__attribute__((used)) static inline void i40iw_get_cqp_reg_info(struct i40iw_sc_cqp *cqp,
       u32 *val,
       u32 *tail,
       u32 *error)
{
 if (cqp->dev->is_pf) {
  *val = i40iw_rd32(cqp->dev->hw, I40E_PFPE_CQPTAIL);
  *tail = RS_32(*val, I40E_PFPE_CQPTAIL_WQTAIL);
  *error = RS_32(*val, I40E_PFPE_CQPTAIL_CQP_OP_ERR);
 } else {
  *val = i40iw_rd32(cqp->dev->hw, I40E_VFPE_CQPTAIL1);
  *tail = RS_32(*val, I40E_VFPE_CQPTAIL_WQTAIL);
  *error = RS_32(*val, I40E_VFPE_CQPTAIL_CQP_OP_ERR);
 }
}
