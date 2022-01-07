
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dbid; } ;
struct ocrdma_qp {int rq_db; TYPE_1__ rq; } ;


 int OCRDMA_DB_RQ_SHIFT ;
 int iowrite32 (int,int ) ;

__attribute__((used)) static void ocrdma_ring_rq_db(struct ocrdma_qp *qp)
{
 u32 val = qp->rq.dbid | (1 << OCRDMA_DB_RQ_SHIFT);

 iowrite32(val, qp->rq_db);
}
