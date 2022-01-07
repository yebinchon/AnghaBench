
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int orphan_count; } ;


 int CSK_RST_ABORTED ;
 scalar_t__ TCP_LISTEN ;
 int chtls_conn_done (struct sock*) ;
 int chtls_release_resources (struct sock*) ;
 int cleanup_syn_rcv_conn (struct sock*,struct sock*) ;
 scalar_t__ csk_flag (struct sock*,int ) ;
 scalar_t__ likely (int) ;
 int percpu_counter_inc (int ) ;
 int sock_orphan (struct sock*) ;

__attribute__((used)) static void do_abort_syn_rcv(struct sock *child, struct sock *parent)
{





 if (likely(parent->sk_state == TCP_LISTEN)) {
  cleanup_syn_rcv_conn(child, parent);







  sock_orphan(child);
  percpu_counter_inc((child)->sk_prot->orphan_count);
  chtls_release_resources(child);
  chtls_conn_done(child);
 } else {
  if (csk_flag(child, CSK_RST_ABORTED)) {
   chtls_release_resources(child);
   chtls_conn_done(child);
  }
 }
}
