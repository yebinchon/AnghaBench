
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct i40iw_qp_uk {int swqe_polarity; TYPE_1__* sq_base; int sq_ring; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int * elem; } ;


 size_t I40IW_RING_GETCURRENT_HEAD (int ) ;
 int I40IW_RING_MOVE_HEAD (int ,int) ;

__attribute__((used)) static u64 *i40iw_puda_get_next_send_wqe(struct i40iw_qp_uk *qp, u32 *wqe_idx)
{
 u64 *wqe = ((void*)0);
 enum i40iw_status_code ret_code = 0;

 *wqe_idx = I40IW_RING_GETCURRENT_HEAD(qp->sq_ring);
 if (!*wqe_idx)
  qp->swqe_polarity = !qp->swqe_polarity;
 I40IW_RING_MOVE_HEAD(qp->sq_ring, ret_code);
 if (ret_code)
  return wqe;
 wqe = qp->sq_base[*wqe_idx].elem;

 return wqe;
}
