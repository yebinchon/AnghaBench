
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int s_flags; scalar_t__ priv; int s_lock; } ;
struct hfi1_qp_priv {int s_iowait; } ;


 int HFI1_S_ANY_WAIT_IO ;
 int IOWAIT_PENDING_IB ;
 int _hfi1_schedule_send (struct rvt_qp*) ;
 scalar_t__ hfi1_send_ok (struct rvt_qp*) ;
 int iowait_set_flag (int *,int ) ;
 int lockdep_assert_held (int *) ;

bool hfi1_schedule_send(struct rvt_qp *qp)
{
 lockdep_assert_held(&qp->s_lock);
 if (hfi1_send_ok(qp)) {
  _hfi1_schedule_send(qp);
  return 1;
 }
 if (qp->s_flags & HFI1_S_ANY_WAIT_IO)
  iowait_set_flag(&((struct hfi1_qp_priv *)qp->priv)->s_iowait,
    IOWAIT_PENDING_IB);
 return 0;
}
