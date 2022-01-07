
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int dummy; } ;


 int hfi1_do_send (struct rvt_qp*,int) ;

void hfi1_do_send_from_rvt(struct rvt_qp *qp)
{
 hfi1_do_send(qp, 0);
}
