
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int size; int in_use; int flush_cidx; int wq_pidx; int pidx; int cidx; int memsize; int qid; } ;
struct t4_wq {TYPE_1__ sq; int flushed; } ;
struct sk_buff {int dummy; } ;


 int EMSGSIZE ;
 scalar_t__ rdma_nl_put_driver_u32 (struct sk_buff*,char*,int ) ;
 scalar_t__ rdma_nl_put_driver_u32_hex (struct sk_buff*,char*,int ) ;

__attribute__((used)) static int fill_sq(struct sk_buff *msg, struct t4_wq *wq)
{

 if (rdma_nl_put_driver_u32(msg, "sqid", wq->sq.qid))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "flushed", wq->flushed))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "memsize", wq->sq.memsize))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "cidx", wq->sq.cidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "pidx", wq->sq.pidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "wq_pidx", wq->sq.wq_pidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "flush_cidx", wq->sq.flush_cidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "in_use", wq->sq.in_use))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "size", wq->sq.size))
  goto err;
 if (rdma_nl_put_driver_u32_hex(msg, "flags", wq->sq.flags))
  goto err;
 return 0;
err:
 return -EMSGSIZE;
}
