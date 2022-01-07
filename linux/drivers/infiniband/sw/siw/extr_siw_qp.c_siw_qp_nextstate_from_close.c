
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


 int ECONNABORTED ;



 int SIW_WR_IDLE ;
 int WARN_ON (int) ;
 int siw_dbg_qp (struct siw_qp*,char*,int ,int ) ;
 int * siw_qp_state_to_string ;
 int siw_rq_flush (struct siw_qp*) ;
 int siw_sq_flush (struct siw_qp*) ;
 TYPE_2__* tx_wqe (struct siw_qp*) ;

__attribute__((used)) static int siw_qp_nextstate_from_close(struct siw_qp *qp,
           struct siw_qp_attrs *attrs)
{
 int rv = 0;

 switch (attrs->state) {
 case 128:
  WARN_ON(tx_wqe(qp)->wr_status != SIW_WR_IDLE);
  qp->attrs.state = 128;
  break;

 case 130:




  break;

 case 129:




  qp->attrs.state = 129;

  if (tx_wqe(qp)->wr_status != SIW_WR_IDLE)
   siw_sq_flush(qp);

  siw_rq_flush(qp);
  break;

 default:
  siw_dbg_qp(qp, "state transition undefined: %s => %s\n",
      siw_qp_state_to_string[qp->attrs.state],
      siw_qp_state_to_string[attrs->state]);

  rv = -ECONNABORTED;
 }
 return rv;
}
