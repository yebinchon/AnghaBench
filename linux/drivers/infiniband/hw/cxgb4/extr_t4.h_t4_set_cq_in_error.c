
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cq {int* qp_errp; } ;



__attribute__((used)) static inline void t4_set_cq_in_error(struct t4_cq *cq)
{
 *cq->qp_errp = 1;
}
