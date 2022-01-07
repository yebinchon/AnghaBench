
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdma_engine {int dummy; } ;
struct TYPE_2__ {int qp_type; int qp_num; int device; } ;
struct rvt_qp {TYPE_1__ ibqp; } ;
struct hfi1_devdata {int flags; int qos_shift; } ;


 int HFI1_HAS_SEND_DMA ;

 struct hfi1_devdata* dd_from_ibdev (int ) ;
 struct sdma_engine* sdma_select_engine_sc (struct hfi1_devdata*,int,int ) ;

struct sdma_engine *qp_to_sdma_engine(struct rvt_qp *qp, u8 sc5)
{
 struct hfi1_devdata *dd = dd_from_ibdev(qp->ibqp.device);
 struct sdma_engine *sde;

 if (!(dd->flags & HFI1_HAS_SEND_DMA))
  return ((void*)0);
 switch (qp->ibqp.qp_type) {
 case 128:
  return ((void*)0);
 default:
  break;
 }
 sde = sdma_select_engine_sc(dd, qp->ibqp.qp_num >> dd->qos_shift, sc5);
 return sde;
}
