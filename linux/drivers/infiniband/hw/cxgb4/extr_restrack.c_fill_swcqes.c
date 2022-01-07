
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct t4_cqe {int dummy; } ;
struct t4_cq {int sw_in_use; int sw_cidx; scalar_t__ sw_pidx; int size; } ;
struct sk_buff {int dummy; } ;


 int EMSGSIZE ;
 scalar_t__ fill_cqe (struct sk_buff*,struct t4_cqe*,int,char*) ;

__attribute__((used)) static int fill_swcqes(struct sk_buff *msg, struct t4_cq *cq,
         struct t4_cqe *cqes)
{
 u16 idx;

 if (!cq->sw_in_use)
  return 0;

 idx = cq->sw_cidx;
 if (fill_cqe(msg, cqes, idx, "swcq_idx"))
  goto err;
 if (cq->sw_in_use == 1)
  goto out;
 idx = (cq->sw_pidx > 0) ? cq->sw_pidx - 1 : cq->size - 1;
 if (fill_cqe(msg, cqes + 1, idx, "swcq_idx"))
  goto err;
out:
 return 0;
err:
 return -EMSGSIZE;
}
