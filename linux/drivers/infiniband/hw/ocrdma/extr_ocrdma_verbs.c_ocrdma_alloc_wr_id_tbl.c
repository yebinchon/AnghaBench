
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int max_cnt; } ;
struct TYPE_3__ {int max_cnt; } ;
struct ocrdma_qp {int * rqe_wr_id_tbl; TYPE_2__ rq; int * wqe_wr_id_tbl; TYPE_1__ sq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (int ,int,int ) ;

__attribute__((used)) static int ocrdma_alloc_wr_id_tbl(struct ocrdma_qp *qp)
{
 qp->wqe_wr_id_tbl =
     kcalloc(qp->sq.max_cnt, sizeof(*(qp->wqe_wr_id_tbl)),
      GFP_KERNEL);
 if (qp->wqe_wr_id_tbl == ((void*)0))
  return -ENOMEM;
 qp->rqe_wr_id_tbl =
     kcalloc(qp->rq.max_cnt, sizeof(u64), GFP_KERNEL);
 if (qp->rqe_wr_id_tbl == ((void*)0))
  return -ENOMEM;

 return 0;
}
