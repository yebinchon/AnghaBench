
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_sqe {int dummy; } ;
struct TYPE_2__ {size_t orq_size; } ;
struct siw_qp {size_t orq_put; TYPE_1__ attrs; struct siw_sqe* orq; } ;



__attribute__((used)) static inline struct siw_sqe *orq_get_tail(struct siw_qp *qp)
{
 return &qp->orq[qp->orq_put % qp->attrs.orq_size];
}
