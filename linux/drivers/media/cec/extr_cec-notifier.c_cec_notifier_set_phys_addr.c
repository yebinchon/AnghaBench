
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cec_notifier {int lock; int phys_addr; scalar_t__ cec_adap; int (* callback ) (scalar_t__,int ) ;} ;


 int cec_s_phys_addr (scalar_t__,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (scalar_t__,int ) ;

void cec_notifier_set_phys_addr(struct cec_notifier *n, u16 pa)
{
 if (n == ((void*)0))
  return;

 mutex_lock(&n->lock);
 n->phys_addr = pa;
 if (n->callback)
  n->callback(n->cec_adap, n->phys_addr);
 else if (n->cec_adap)
  cec_s_phys_addr(n->cec_adap, n->phys_addr, 0);
 mutex_unlock(&n->lock);
}
