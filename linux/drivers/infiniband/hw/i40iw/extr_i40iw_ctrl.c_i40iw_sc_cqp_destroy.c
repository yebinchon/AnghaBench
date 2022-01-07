
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40iw_sc_cqp {int sdbuf; TYPE_1__* dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int hw; scalar_t__ is_pf; } ;


 int I40E_PFPE_CCQPHIGH ;
 int I40E_PFPE_CCQPLOW ;
 int I40E_PFPE_CCQPSTATUS ;
 int I40E_VFPE_CCQPHIGH1 ;
 int I40E_VFPE_CCQPLOW1 ;
 int I40E_VFPE_CCQPSTATUS1 ;
 scalar_t__ I40IW_DONE_COUNT ;
 int I40IW_ERR_TIMEOUT ;
 int I40IW_SLEEP_COUNT ;
 int i40iw_free_dma_mem (int ,int *) ;
 int i40iw_rd32 (int ,int) ;
 int i40iw_wr32 (int ,int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_cqp_destroy(struct i40iw_sc_cqp *cqp)
{
 u32 cnt = 0, val = 1;
 enum i40iw_status_code ret_code = 0;
 u32 cqpstat_addr;

 if (cqp->dev->is_pf) {
  i40iw_wr32(cqp->dev->hw, I40E_PFPE_CCQPHIGH, 0);
  i40iw_wr32(cqp->dev->hw, I40E_PFPE_CCQPLOW, 0);
  cqpstat_addr = I40E_PFPE_CCQPSTATUS;
 } else {
  i40iw_wr32(cqp->dev->hw, I40E_VFPE_CCQPHIGH1, 0);
  i40iw_wr32(cqp->dev->hw, I40E_VFPE_CCQPLOW1, 0);
  cqpstat_addr = I40E_VFPE_CCQPSTATUS1;
 }
 do {
  if (cnt++ > I40IW_DONE_COUNT) {
   ret_code = I40IW_ERR_TIMEOUT;
   break;
  }
  udelay(I40IW_SLEEP_COUNT);
  val = i40iw_rd32(cqp->dev->hw, cqpstat_addr);
 } while (val);

 i40iw_free_dma_mem(cqp->dev->hw, &cqp->sdbuf);
 return ret_code;
}
