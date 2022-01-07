
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int in_use; int rqt_size; int rqt_hwaddr; int msn; int wq_pidx; int pidx; int cidx; int memsize; int qid; } ;
struct t4_wq {TYPE_1__ rq; } ;
struct sk_buff {int dummy; } ;


 int EMSGSIZE ;
 scalar_t__ rdma_nl_put_driver_u32 (struct sk_buff*,char*,int ) ;
 scalar_t__ rdma_nl_put_driver_u32_hex (struct sk_buff*,char*,int ) ;

__attribute__((used)) static int fill_rq(struct sk_buff *msg, struct t4_wq *wq)
{

 if (rdma_nl_put_driver_u32(msg, "rqid", wq->rq.qid))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "memsize", wq->rq.memsize))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "cidx", wq->rq.cidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "pidx", wq->rq.pidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "wq_pidx", wq->rq.wq_pidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "msn", wq->rq.msn))
  goto err;
 if (rdma_nl_put_driver_u32_hex(msg, "rqt_hwaddr", wq->rq.rqt_hwaddr))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "rqt_size", wq->rq.rqt_size))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "in_use", wq->rq.in_use))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "size", wq->rq.size))
  goto err;
 return 0;
err:
 return -EMSGSIZE;
}
