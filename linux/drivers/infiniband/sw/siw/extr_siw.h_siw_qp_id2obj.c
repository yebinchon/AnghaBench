
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_qp {int ref; } ;
struct siw_device {int qp_xa; } ;


 scalar_t__ kref_get_unless_zero (int *) ;
 scalar_t__ likely (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct siw_qp* xa_load (int *,int) ;

__attribute__((used)) static inline struct siw_qp *siw_qp_id2obj(struct siw_device *sdev, int id)
{
 struct siw_qp *qp;

 rcu_read_lock();
 qp = xa_load(&sdev->qp_xa, id);
 if (likely(qp && kref_get_unless_zero(&qp->ref))) {
  rcu_read_unlock();
  return qp;
 }
 rcu_read_unlock();
 return ((void*)0);
}
