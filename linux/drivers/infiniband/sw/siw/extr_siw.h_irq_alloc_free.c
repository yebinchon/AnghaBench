
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_sqe {int flags; } ;
struct TYPE_2__ {size_t irq_size; } ;
struct siw_qp {size_t irq_put; TYPE_1__ attrs; struct siw_sqe* irq; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static inline struct siw_sqe *irq_alloc_free(struct siw_qp *qp)
{
 struct siw_sqe *irq_e = &qp->irq[qp->irq_put % qp->attrs.irq_size];

 if (READ_ONCE(irq_e->flags) == 0) {
  qp->irq_put++;
  return irq_e;
 }
 return ((void*)0);
}
