
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {size_t size; TYPE_2__* queue; } ;
struct t4_wq {TYPE_3__ sq; } ;
struct TYPE_4__ {int host_wq_pidx; } ;
struct TYPE_5__ {TYPE_1__ status; } ;



__attribute__((used)) static inline u16 t4_sq_host_wq_pidx(struct t4_wq *wq)
{
 return wq->sq.queue[wq->sq.size].status.host_wq_pidx;
}
