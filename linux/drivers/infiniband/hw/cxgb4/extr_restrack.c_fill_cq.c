
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cq {int flags; int bits_type_ts; int error; int gen; int vector; int sw_in_use; int sw_pidx; int sw_cidx; int cidx_inc; int cidx; int size; int memsize; int cqid; } ;
struct sk_buff {int dummy; } ;


 int EMSGSIZE ;
 int be64_to_cpu (int ) ;
 scalar_t__ rdma_nl_put_driver_u32 (struct sk_buff*,char*,int ) ;
 scalar_t__ rdma_nl_put_driver_u64_hex (struct sk_buff*,char*,int ) ;

__attribute__((used)) static int fill_cq(struct sk_buff *msg, struct t4_cq *cq)
{
 if (rdma_nl_put_driver_u32(msg, "cqid", cq->cqid))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "memsize", cq->memsize))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "size", cq->size))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "cidx", cq->cidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "cidx_inc", cq->cidx_inc))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "sw_cidx", cq->sw_cidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "sw_pidx", cq->sw_pidx))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "sw_in_use", cq->sw_in_use))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "vector", cq->vector))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "gen", cq->gen))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "error", cq->error))
  goto err;
 if (rdma_nl_put_driver_u64_hex(msg, "bits_type_ts",
      be64_to_cpu(cq->bits_type_ts)))
  goto err;
 if (rdma_nl_put_driver_u64_hex(msg, "flags", cq->flags))
  goto err;

 return 0;

err:
 return -EMSGSIZE;
}
