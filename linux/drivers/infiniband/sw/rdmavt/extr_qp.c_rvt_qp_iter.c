
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvt_qp_iter {int specials; void (* cb ) (struct rvt_qp*,int ) ;struct rvt_qp* qp; int v; struct rvt_dev_info* rdi; } ;
struct TYPE_2__ {int phys_port_cnt; } ;
struct rvt_dev_info {TYPE_1__ ibdev; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rvt_get_qp (struct rvt_qp*) ;
 int rvt_put_qp (struct rvt_qp*) ;
 int rvt_qp_iter_next (struct rvt_qp_iter*) ;
 void stub1 (struct rvt_qp*,int ) ;

void rvt_qp_iter(struct rvt_dev_info *rdi,
   u64 v,
   void (*cb)(struct rvt_qp *qp, u64 v))
{
 int ret;
 struct rvt_qp_iter i = {
  .rdi = rdi,
  .specials = rdi->ibdev.phys_port_cnt * 2,
  .v = v,
  .cb = cb
 };

 rcu_read_lock();
 do {
  ret = rvt_qp_iter_next(&i);
  if (!ret) {
   rvt_get_qp(i.qp);
   rcu_read_unlock();
   i.cb(i.qp, i.v);
   rcu_read_lock();
   rvt_put_qp(i.qp);
  }
 } while (!ret);
 rcu_read_unlock();
}
