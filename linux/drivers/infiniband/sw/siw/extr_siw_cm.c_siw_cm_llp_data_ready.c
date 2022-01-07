
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; } ;
struct siw_cep {int state; } ;


 int SIW_CM_WORK_READ_MPAHDR ;




 int WARN_ON (int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int siw_cm_queue_work (struct siw_cep*,int ) ;
 int siw_dbg_cep (struct siw_cep*,char*,int) ;
 struct siw_cep* sk_to_cep (struct sock*) ;

__attribute__((used)) static void siw_cm_llp_data_ready(struct sock *sk)
{
 struct siw_cep *cep;

 read_lock(&sk->sk_callback_lock);

 cep = sk_to_cep(sk);
 if (!cep) {
  WARN_ON(1);
  goto out;
 }
 siw_dbg_cep(cep, "state: %d\n", cep->state);

 switch (cep->state) {
 case 128:

 case 129:
  break;

 case 130:

 case 131:
  siw_cm_queue_work(cep, SIW_CM_WORK_READ_MPAHDR);
  break;

 default:
  siw_dbg_cep(cep, "unexpected data, state %d\n", cep->state);
  break;
 }
out:
 read_unlock(&sk->sk_callback_lock);
}
