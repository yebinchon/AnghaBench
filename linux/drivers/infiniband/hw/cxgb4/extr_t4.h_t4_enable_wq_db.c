
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_2__* queue; } ;
struct t4_wq {TYPE_3__ rq; } ;
struct TYPE_4__ {scalar_t__ db_off; } ;
struct TYPE_5__ {TYPE_1__ status; } ;



__attribute__((used)) static inline void t4_enable_wq_db(struct t4_wq *wq)
{
 wq->rq.queue[wq->rq.size].status.db_off = 0;
}
