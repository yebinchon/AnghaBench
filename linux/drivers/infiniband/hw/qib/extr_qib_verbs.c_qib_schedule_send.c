
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int dummy; } ;


 int _qib_schedule_send (struct rvt_qp*) ;
 scalar_t__ qib_send_ok (struct rvt_qp*) ;

bool qib_schedule_send(struct rvt_qp *qp)
{
 if (qib_send_ok(qp))
  return _qib_schedule_send(qp);
 return 0;
}
