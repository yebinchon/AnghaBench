
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_wq {int* qp_errp; } ;



__attribute__((used)) static inline int t4_wq_in_error(struct t4_wq *wq)
{
 return *wq->qp_errp;
}
