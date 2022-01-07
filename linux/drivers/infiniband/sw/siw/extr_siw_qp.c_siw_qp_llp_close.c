
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t state; int * sk; } ;
struct TYPE_6__ {int tx_suspend; } ;
struct TYPE_5__ {int rx_suspend; } ;
struct siw_qp {TYPE_3__ attrs; int state_lock; int * cep; TYPE_2__ tx_ctx; TYPE_1__ rx_stream; } ;
struct TYPE_8__ {int wr_status; } ;



 void* SIW_QP_STATE_ERROR ;




 int SIW_WR_IDLE ;
 int down_write (int *) ;
 int siw_cep_put (int *) ;
 int siw_dbg_qp (struct siw_qp*,char*,int ) ;
 int * siw_qp_state_to_string ;
 int siw_rq_flush (struct siw_qp*) ;
 int siw_sq_flush (struct siw_qp*) ;
 TYPE_4__* tx_wqe (struct siw_qp*) ;
 int up_write (int *) ;

void siw_qp_llp_close(struct siw_qp *qp)
{
 siw_dbg_qp(qp, "enter llp close, state = %s\n",
     siw_qp_state_to_string[qp->attrs.state]);

 down_write(&qp->state_lock);

 qp->rx_stream.rx_suspend = 1;
 qp->tx_ctx.tx_suspend = 1;
 qp->attrs.sk = ((void*)0);

 switch (qp->attrs.state) {
 case 129:
 case 130:
 case 131:
 case 128:
  qp->attrs.state = SIW_QP_STATE_ERROR;
  break;






 case 132:
  if (tx_wqe(qp)->wr_status == SIW_WR_IDLE)
   qp->attrs.state = SIW_QP_STATE_ERROR;
  else
   qp->attrs.state = 131;
  break;

 default:
  siw_dbg_qp(qp, "llp close: no state transition needed: %s\n",
      siw_qp_state_to_string[qp->attrs.state]);
  break;
 }
 siw_sq_flush(qp);
 siw_rq_flush(qp);




 if (qp->cep) {
  siw_cep_put(qp->cep);
  qp->cep = ((void*)0);
 }

 up_write(&qp->state_lock);

 siw_dbg_qp(qp, "llp close exit: state %s\n",
     siw_qp_state_to_string[qp->attrs.state]);
}
