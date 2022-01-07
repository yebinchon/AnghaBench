
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dbid; } ;
struct ocrdma_qp {int sq_db; TYPE_1__ sq; } ;


 int OCRDMA_DB_SQ_SHIFT ;
 int iowrite32 (int,int ) ;

__attribute__((used)) static void ocrdma_ring_sq_db(struct ocrdma_qp *qp)
{
 u32 val = qp->sq.dbid | (1 << OCRDMA_DB_SQ_SHIFT);

 iowrite32(val, qp->sq_db);
}
