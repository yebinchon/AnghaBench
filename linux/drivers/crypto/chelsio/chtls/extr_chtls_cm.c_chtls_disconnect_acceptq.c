
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct request_sock {struct request_sock* dl_next; struct sock* sk; int * rsk_ops; } ;


 struct request_sock** ACCEPT_QUEUE (struct sock*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int chtls_rsk_ops ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int release_tcp_port (struct sock*) ;
 int reqsk_put (struct request_sock*) ;
 int reset_listen_child (struct sock*) ;
 int sk_acceptq_removed (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void chtls_disconnect_acceptq(struct sock *listen_sk)
{
 struct request_sock **pprev;

 pprev = ACCEPT_QUEUE(listen_sk);
 while (*pprev) {
  struct request_sock *req = *pprev;

  if (req->rsk_ops == &chtls_rsk_ops) {
   struct sock *child = req->sk;

   *pprev = req->dl_next;
   sk_acceptq_removed(listen_sk);
   reqsk_put(req);
   sock_hold(child);
   local_bh_disable();
   bh_lock_sock(child);
   release_tcp_port(child);
   reset_listen_child(child);
   bh_unlock_sock(child);
   local_bh_enable();
   sock_put(child);
  } else {
   pprev = &req->dl_next;
  }
 }
}
