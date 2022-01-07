
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct siw_qp_attrs {int state; } ;
struct TYPE_3__ {int state; } ;
struct siw_qp {TYPE_1__ attrs; } ;
struct TYPE_4__ {int wr_status; } ;


 int RDMAP_ECODE_UNSPECIFIED ;
 int RDMAP_ETYPE_CATASTROPHIC ;



 int SIW_WR_IDLE ;
 int TERM_ERROR_LAYER_RDMAP ;
 int siw_init_terminate (struct siw_qp*,int ,int ,int ,int) ;
 int siw_rq_flush (struct siw_qp*) ;
 int siw_sq_flush (struct siw_qp*) ;
 TYPE_2__* tx_wqe (struct siw_qp*) ;

__attribute__((used)) static int siw_qp_nextstate_from_rts(struct siw_qp *qp,
         struct siw_qp_attrs *attrs)
{
 int drop_conn = 0;

 switch (attrs->state) {
 case 130:
  if (tx_wqe(qp)->wr_status == SIW_WR_IDLE) {
   qp->attrs.state = 130;
  } else {
   qp->attrs.state = 129;
   siw_sq_flush(qp);
  }
  siw_rq_flush(qp);

  drop_conn = 1;
  break;

 case 128:
  qp->attrs.state = 128;

  siw_init_terminate(qp, TERM_ERROR_LAYER_RDMAP,
       RDMAP_ETYPE_CATASTROPHIC,
       RDMAP_ECODE_UNSPECIFIED, 1);
  drop_conn = 1;
  break;

 case 129:
  siw_sq_flush(qp);
  siw_rq_flush(qp);
  qp->attrs.state = 129;
  drop_conn = 1;
  break;

 default:
  break;
 }
 return drop_conn;
}
