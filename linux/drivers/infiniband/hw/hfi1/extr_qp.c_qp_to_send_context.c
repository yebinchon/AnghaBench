
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct send_context {int dummy; } ;
struct TYPE_4__ {int qp_type; int qp_num; int device; } ;
struct rvt_qp {TYPE_2__ ibqp; } ;
struct hfi1_devdata {int qos_shift; TYPE_1__* vld; } ;
struct TYPE_3__ {struct send_context* sc; } ;



 struct hfi1_devdata* dd_from_ibdev (int ) ;
 struct send_context* pio_select_send_context_sc (struct hfi1_devdata*,int,int ) ;

struct send_context *qp_to_send_context(struct rvt_qp *qp, u8 sc5)
{
 struct hfi1_devdata *dd = dd_from_ibdev(qp->ibqp.device);

 switch (qp->ibqp.qp_type) {
 case 128:

  return dd->vld[15].sc;
 default:
  break;
 }

 return pio_select_send_context_sc(dd, qp->ibqp.qp_num >> dd->qos_shift,
       sc5);
}
