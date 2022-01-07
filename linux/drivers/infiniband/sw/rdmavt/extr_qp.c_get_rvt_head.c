
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rvt_rq {TYPE_2__* kwq; TYPE_1__* wq; } ;
struct TYPE_4__ {int head; } ;
struct TYPE_3__ {int head; } ;


 int RDMA_READ_UAPI_ATOMIC (int ) ;

__attribute__((used)) static inline u32 get_rvt_head(struct rvt_rq *rq, void *ip)
{
 u32 head;

 if (ip)
  head = RDMA_READ_UAPI_ATOMIC(rq->wq->head);
 else
  head = rq->kwq->head;

 return head;
}
