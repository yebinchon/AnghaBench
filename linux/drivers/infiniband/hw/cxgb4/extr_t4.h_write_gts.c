
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t4_cq {scalar_t__ gts; int cqid; scalar_t__ bar2_va; int bar2_qid; } ;


 int INGRESSQID_V (int ) ;
 scalar_t__ SGE_UDB_GTS ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void write_gts(struct t4_cq *cq, u32 val)
{
 if (cq->bar2_va)
  writel(val | INGRESSQID_V(cq->bar2_qid),
         cq->bar2_va + SGE_UDB_GTS);
 else
  writel(val | INGRESSQID_V(cq->cqid), cq->gts);
}
