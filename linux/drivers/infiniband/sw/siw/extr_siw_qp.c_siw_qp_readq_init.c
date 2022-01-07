
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_sqe {int dummy; } ;
struct TYPE_2__ {int irq_size; int orq_size; } ;
struct siw_qp {void* irq; TYPE_1__ attrs; void* orq; } ;


 int ENOMEM ;
 int roundup_pow_of_two (int) ;
 int siw_dbg_qp (struct siw_qp*,char*,int,...) ;
 int vfree (void*) ;
 void* vzalloc (int) ;

__attribute__((used)) static int siw_qp_readq_init(struct siw_qp *qp, int irq_size, int orq_size)
{
 irq_size = roundup_pow_of_two(irq_size);
 orq_size = roundup_pow_of_two(orq_size);

 qp->attrs.irq_size = irq_size;
 qp->attrs.orq_size = orq_size;

 qp->irq = vzalloc(irq_size * sizeof(struct siw_sqe));
 if (!qp->irq) {
  siw_dbg_qp(qp, "irq malloc for %d failed\n", irq_size);
  qp->attrs.irq_size = 0;
  return -ENOMEM;
 }
 qp->orq = vzalloc(orq_size * sizeof(struct siw_sqe));
 if (!qp->orq) {
  siw_dbg_qp(qp, "orq malloc for %d failed\n", orq_size);
  qp->attrs.orq_size = 0;
  qp->attrs.irq_size = 0;
  vfree(qp->irq);
  return -ENOMEM;
 }
 siw_dbg_qp(qp, "ORD %d, IRD %d\n", orq_size, irq_size);
 return 0;
}
