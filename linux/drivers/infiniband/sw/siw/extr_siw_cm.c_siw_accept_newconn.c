
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct socket {TYPE_1__* sk; } ;
struct siw_cep {scalar_t__ state; struct socket* sock; struct siw_cep* listen_cep; int sk_error_report; int sk_write_space; int sk_data_ready; int sk_state_change; int sdev; } ;
struct TYPE_2__ {int sk_rmem_alloc; struct siw_cep* sk_user_data; } ;


 int EAGAIN ;
 int O_NONBLOCK ;
 int SIW_CM_WORK_MPATIMEOUT ;
 scalar_t__ SIW_EPSTATE_AWAIT_MPAREQ ;
 scalar_t__ SIW_EPSTATE_LISTENING ;
 int SOL_TCP ;
 int TCP_NODELAY ;
 scalar_t__ atomic_read (int *) ;
 int kernel_accept (struct socket*,struct socket**,int ) ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 struct siw_cep* siw_cep_alloc (int ) ;
 int siw_cep_get (struct siw_cep*) ;
 int siw_cep_put (struct siw_cep*) ;
 int siw_cep_set_free (struct siw_cep*) ;
 int siw_cep_set_inuse (struct siw_cep*) ;
 scalar_t__ siw_cm_alloc_work (struct siw_cep*,int) ;
 int siw_cm_queue_work (struct siw_cep*,int ) ;
 int siw_dbg_cep (struct siw_cep*,char*,...) ;
 int siw_proc_mpareq (struct siw_cep*) ;
 int siw_socket_disassoc (struct socket*) ;
 int siw_tcp_nagle ;
 int sock_release (struct socket*) ;

__attribute__((used)) static void siw_accept_newconn(struct siw_cep *cep)
{
 struct socket *s = cep->sock;
 struct socket *new_s = ((void*)0);
 struct siw_cep *new_cep = ((void*)0);
 int rv = 0;

 if (cep->state != SIW_EPSTATE_LISTENING)
  goto error;

 new_cep = siw_cep_alloc(cep->sdev);
 if (!new_cep)
  goto error;






 if (siw_cm_alloc_work(new_cep, 4) != 0)
  goto error;





 new_cep->sk_state_change = cep->sk_state_change;
 new_cep->sk_data_ready = cep->sk_data_ready;
 new_cep->sk_write_space = cep->sk_write_space;
 new_cep->sk_error_report = cep->sk_error_report;

 rv = kernel_accept(s, &new_s, O_NONBLOCK);
 if (rv != 0) {



  siw_dbg_cep(cep, "kernel_accept() error: %d\n", rv);
  goto error;
 }
 new_cep->sock = new_s;
 siw_cep_get(new_cep);
 new_s->sk->sk_user_data = new_cep;

 if (siw_tcp_nagle == 0) {
  int val = 1;

  rv = kernel_setsockopt(new_s, SOL_TCP, TCP_NODELAY,
           (char *)&val, sizeof(val));
  if (rv) {
   siw_dbg_cep(cep, "setsockopt NODELAY error: %d\n", rv);
   goto error;
  }
 }
 new_cep->state = SIW_EPSTATE_AWAIT_MPAREQ;

 rv = siw_cm_queue_work(new_cep, SIW_CM_WORK_MPATIMEOUT);
 if (rv)
  goto error;



 new_cep->listen_cep = cep;
 siw_cep_get(cep);

 if (atomic_read(&new_s->sk->sk_rmem_alloc)) {



  siw_dbg_cep(cep, "immediate mpa request\n");

  siw_cep_set_inuse(new_cep);
  rv = siw_proc_mpareq(new_cep);
  siw_cep_set_free(new_cep);

  if (rv != -EAGAIN) {
   siw_cep_put(cep);
   new_cep->listen_cep = ((void*)0);
   if (rv)
    goto error;
  }
 }
 return;

error:
 if (new_cep)
  siw_cep_put(new_cep);

 if (new_s) {
  siw_socket_disassoc(new_s);
  sock_release(new_s);
  new_cep->sock = ((void*)0);
 }
 siw_dbg_cep(cep, "error %d\n", rv);
}
