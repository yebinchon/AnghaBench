
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int head; } ;
struct i40iw_qp_uk {int qp_id; int sq_ring; TYPE_1__ initial_ring; int push_db; } ;


 int I40E_PFPE_WQEALLOC_WQE_DESC_INDEX ;
 int I40IW_RING_GETCURRENT_HEAD (int ) ;
 int LS_32 (int,int ) ;
 int set_32bit_val (int ,int ,int) ;

__attribute__((used)) static void i40iw_qp_ring_push_db(struct i40iw_qp_uk *qp, u32 wqe_idx)
{
 set_32bit_val(qp->push_db, 0, LS_32((wqe_idx >> 2), I40E_PFPE_WQEALLOC_WQE_DESC_INDEX) | qp->qp_id);
 qp->initial_ring.head = I40IW_RING_GETCURRENT_HEAD(qp->sq_ring);
}
