
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {int dummy; } ;
struct caam_napi {int irqtask; struct qman_portal* p; } ;


 int QM_PIRQ_DQRI ;
 scalar_t__ in_irq () ;
 int in_serving_softirq () ;
 int napi_schedule (int *) ;
 int qman_p_irqsource_remove (struct qman_portal*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int caam_qi_napi_schedule(struct qman_portal *p, struct caam_napi *np)
{





 if (unlikely(in_irq() || !in_serving_softirq())) {

  qman_p_irqsource_remove(p, QM_PIRQ_DQRI);
  np->p = p;
  napi_schedule(&np->irqtask);
  return 1;
 }
 return 0;
}
