
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int local_rd; int remote_rd; int remote_wr; int local_wr; int mw_bind; int remote_atomic; int lkey; int num_pbls; scalar_t__ fr_mr; } ;
struct TYPE_3__ {int rkey; int lkey; } ;
struct ocrdma_mr {TYPE_2__ hwmr; TYPE_1__ ibmr; } ;
struct ocrdma_dev {int dummy; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_MW_BIND ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int ocrdma_mbx_alloc_lkey (struct ocrdma_dev*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static int ocrdma_alloc_lkey(struct ocrdma_dev *dev, struct ocrdma_mr *mr,
       u32 pdid, int acc, u32 num_pbls, u32 addr_check)
{
 int status;

 mr->hwmr.fr_mr = 0;
 mr->hwmr.local_rd = 1;
 mr->hwmr.remote_rd = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
 mr->hwmr.remote_wr = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
 mr->hwmr.local_wr = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
 mr->hwmr.mw_bind = (acc & IB_ACCESS_MW_BIND) ? 1 : 0;
 mr->hwmr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
 mr->hwmr.num_pbls = num_pbls;

 status = ocrdma_mbx_alloc_lkey(dev, &mr->hwmr, pdid, addr_check);
 if (status)
  return status;

 mr->ibmr.lkey = mr->hwmr.lkey;
 if (mr->hwmr.remote_wr || mr->hwmr.remote_rd)
  mr->ibmr.rkey = mr->hwmr.lkey;
 return 0;
}
