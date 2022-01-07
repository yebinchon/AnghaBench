
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_6__ {int tx_suspend; } ;
struct TYPE_5__ {int rx_suspend; } ;
struct siw_qp {TYPE_3__ term_info; struct siw_cep* cep; TYPE_2__ tx_ctx; TYPE_1__ rx_stream; } ;
struct siw_cep {scalar_t__ state; int * qp; int * sock; TYPE_4__* cm_id; } ;
struct TYPE_8__ {int (* rem_ref ) (TYPE_4__*) ;} ;


 int EINVAL ;
 int IW_CM_EVENT_CLOSE ;
 int IW_CM_EVENT_CONNECT_REPLY ;
 int SIW_CM_WORK_CLOSE_LLP ;
 int siw_cep_put (struct siw_cep*) ;
 int siw_cep_set_free (struct siw_cep*) ;
 int siw_cep_set_inuse (struct siw_cep*) ;
 int siw_cm_queue_work (struct siw_cep*,int ) ;
 int siw_cm_upcall (struct siw_cep*,int ,int ) ;
 int siw_dbg_cep (struct siw_cep*,char*,...) ;
 int siw_qp_put (struct siw_qp*) ;
 int siw_send_terminate (struct siw_qp*) ;
 int siw_socket_disassoc (int *) ;
 int sock_release (int *) ;
 int stub1 (TYPE_4__*) ;

void siw_qp_cm_drop(struct siw_qp *qp, int schedule)
{
 struct siw_cep *cep = qp->cep;

 qp->rx_stream.rx_suspend = 1;
 qp->tx_ctx.tx_suspend = 1;

 if (!qp->cep)
  return;

 if (schedule) {
  siw_cm_queue_work(cep, SIW_CM_WORK_CLOSE_LLP);
 } else {
  siw_cep_set_inuse(cep);

  if (cep->state == 133) {
   siw_dbg_cep(cep, "already closed\n");
   goto out;
  }
  siw_dbg_cep(cep, "immediate close, state %d\n", cep->state);

  if (qp->term_info.valid)
   siw_send_terminate(qp);

  if (cep->cm_id) {
   switch (cep->state) {
   case 135:
    siw_cm_upcall(cep, IW_CM_EVENT_CONNECT_REPLY,
           -EINVAL);
    break;

   case 129:
    siw_cm_upcall(cep, IW_CM_EVENT_CLOSE, 0);
    break;

   case 131:
   case 130:
   case 132:
   case 134:
   case 128:
   case 133:
   default:
    break;
   }
   cep->cm_id->rem_ref(cep->cm_id);
   cep->cm_id = ((void*)0);
   siw_cep_put(cep);
  }
  cep->state = 133;

  if (cep->sock) {
   siw_socket_disassoc(cep->sock);



   sock_release(cep->sock);
   cep->sock = ((void*)0);
  }
  if (cep->qp) {
   cep->qp = ((void*)0);
   siw_qp_put(qp);
  }
out:
  siw_cep_set_free(cep);
 }
}
