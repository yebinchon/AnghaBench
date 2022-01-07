
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; int sk_callback_lock; } ;
struct siw_cep {void (* sk_state_change ) (struct sock*) ;int state; TYPE_2__* qp; } ;
struct TYPE_3__ {int tx_suspend; } ;
struct TYPE_4__ {TYPE_1__ tx_ctx; } ;


 int SIW_CM_WORK_ACCEPT ;
 int SIW_CM_WORK_PEER_CLOSE ;



 int read_lock (int *) ;
 int read_unlock (int *) ;
 int siw_cm_queue_work (struct siw_cep*,int ) ;
 int siw_dbg_cep (struct siw_cep*,char*,int) ;
 struct siw_cep* sk_to_cep (struct sock*) ;

__attribute__((used)) static void siw_cm_llp_state_change(struct sock *sk)
{
 struct siw_cep *cep;
 void (*orig_state_change)(struct sock *s);

 read_lock(&sk->sk_callback_lock);

 cep = sk_to_cep(sk);
 if (!cep) {

  read_unlock(&sk->sk_callback_lock);
  return;
 }
 orig_state_change = cep->sk_state_change;

 siw_dbg_cep(cep, "state: %d\n", cep->state);

 switch (sk->sk_state) {
 case 128:




  siw_cm_queue_work(cep, SIW_CM_WORK_ACCEPT);
  break;

 case 130:
 case 129:
  if (cep->qp)
   cep->qp->tx_ctx.tx_suspend = 1;
  siw_cm_queue_work(cep, SIW_CM_WORK_PEER_CLOSE);
  break;

 default:
  siw_dbg_cep(cep, "unexpected socket state %d\n", sk->sk_state);
 }
 read_unlock(&sk->sk_callback_lock);
 orig_state_change(sk);
}
