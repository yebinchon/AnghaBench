
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct chtls_sock {struct request_sock* passive_reap_next; TYPE_1__* listen_ctx; int synq; } ;
struct TYPE_4__ {int icsk_accept_queue; } ;
struct TYPE_3__ {int synq; } ;


 int __skb_unlink (struct sk_buff*,int *) ;
 int chtls_reqsk_free (struct request_sock*) ;
 TYPE_2__* inet_csk (struct sock*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int reqsk_queue_removed (int *,struct request_sock*) ;

__attribute__((used)) static void cleanup_syn_rcv_conn(struct sock *child, struct sock *parent)
{
 struct request_sock *req;
 struct chtls_sock *csk;

 csk = rcu_dereference_sk_user_data(child);
 req = csk->passive_reap_next;

 reqsk_queue_removed(&inet_csk(parent)->icsk_accept_queue, req);
 __skb_unlink((struct sk_buff *)&csk->synq, &csk->listen_ctx->synq);
 chtls_reqsk_free(req);
 csk->passive_reap_next = ((void*)0);
}
