
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ib_mr {int lkey; } ;
struct TYPE_5__ {int zero_based; int mw_type; int access_cntl; int length; scalar_t__ va; int parent_l_key; } ;
struct bnxt_qplib_swqe {TYPE_2__ bind; int flags; int wr_id; int type; } ;
struct bnxt_re_fence_data {TYPE_3__* mw; int bind_rkey; int size; scalar_t__ va; struct bnxt_qplib_swqe bind_wqe; TYPE_1__* mr; } ;
struct bnxt_re_pd {struct bnxt_re_fence_data fence; } ;
struct TYPE_6__ {int rkey; } ;
struct TYPE_4__ {struct ib_mr ib_mr; } ;


 int BNXT_QPLIB_FENCE_WRID ;
 int BNXT_QPLIB_SWQE_FLAGS_SIGNAL_COMP ;
 int BNXT_QPLIB_SWQE_FLAGS_UC_FENCE ;
 int BNXT_QPLIB_SWQE_TYPE_BIND_MW ;
 int IB_ACCESS_REMOTE_READ ;
 int SQ_BIND_MW_TYPE_TYPE1 ;
 int __from_ib_access_flags (int ) ;
 int ib_inc_rkey (int ) ;
 int memset (struct bnxt_qplib_swqe*,int ,int) ;

__attribute__((used)) static void bnxt_re_create_fence_wqe(struct bnxt_re_pd *pd)
{
 struct bnxt_re_fence_data *fence = &pd->fence;
 struct ib_mr *ib_mr = &fence->mr->ib_mr;
 struct bnxt_qplib_swqe *wqe = &fence->bind_wqe;

 memset(wqe, 0, sizeof(*wqe));
 wqe->type = BNXT_QPLIB_SWQE_TYPE_BIND_MW;
 wqe->wr_id = BNXT_QPLIB_FENCE_WRID;
 wqe->flags |= BNXT_QPLIB_SWQE_FLAGS_SIGNAL_COMP;
 wqe->flags |= BNXT_QPLIB_SWQE_FLAGS_UC_FENCE;
 wqe->bind.zero_based = 0;
 wqe->bind.parent_l_key = ib_mr->lkey;
 wqe->bind.va = (u64)(unsigned long)fence->va;
 wqe->bind.length = fence->size;
 wqe->bind.access_cntl = __from_ib_access_flags(IB_ACCESS_REMOTE_READ);
 wqe->bind.mw_type = SQ_BIND_MW_TYPE_TYPE1;




 fence->bind_rkey = ib_inc_rkey(fence->mw->rkey);
}
