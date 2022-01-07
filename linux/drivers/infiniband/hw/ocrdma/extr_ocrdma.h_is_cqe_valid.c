
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_cqe {int flags_status_srcqpn; } ;
struct ocrdma_cq {int phase; } ;


 int OCRDMA_CQE_VALID ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int is_cqe_valid(struct ocrdma_cq *cq, struct ocrdma_cqe *cqe)
{
 int cqe_valid;
 cqe_valid = le32_to_cpu(cqe->flags_status_srcqpn) & OCRDMA_CQE_VALID;
 return (cqe_valid == cq->phase);
}
