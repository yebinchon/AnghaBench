
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_notifier {int lock; scalar_t__ cec_adap; int phys_addr; int conn_info; } ;


 int CEC_PHYS_ADDR_INVALID ;
 int cec_notifier_put (struct cec_notifier*) ;
 int cec_phys_addr_invalidate (scalar_t__) ;
 int cec_s_conn_info (scalar_t__,int *) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cec_notifier_conn_unregister(struct cec_notifier *n)
{
 if (!n)
  return;

 mutex_lock(&n->lock);
 memset(&n->conn_info, 0, sizeof(n->conn_info));
 n->phys_addr = CEC_PHYS_ADDR_INVALID;
 if (n->cec_adap) {
  cec_phys_addr_invalidate(n->cec_adap);
  cec_s_conn_info(n->cec_adap, ((void*)0));
 }
 mutex_unlock(&n->lock);
 cec_notifier_put(n);
}
