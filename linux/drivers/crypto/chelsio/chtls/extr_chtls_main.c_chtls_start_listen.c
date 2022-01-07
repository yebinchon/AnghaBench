
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_protocol; scalar_t__ sk_family; int sk_backlog_rcv; } ;
struct chtls_listen {struct sock* sk; struct chtls_dev* cdev; } ;
struct chtls_dev {int dummy; } ;
struct TYPE_2__ {int inet_rcv_saddr; } ;


 int CHTLS_LISTEN_START ;
 int EADDRNOTAVAIL ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int GFP_KERNEL ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ LOOPBACK (int ) ;
 scalar_t__ PF_INET ;
 TYPE_1__* inet_sk (struct sock*) ;
 struct chtls_listen* kmalloc (int,int ) ;
 int listen_backlog_rcv ;
 int listen_notify_list ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_mutex ;
 int raw_notifier_call_chain (int *,int ,struct chtls_listen*) ;

__attribute__((used)) static int chtls_start_listen(struct chtls_dev *cdev, struct sock *sk)
{
 struct chtls_listen *clisten;
 int err;

 if (sk->sk_protocol != IPPROTO_TCP)
  return -EPROTONOSUPPORT;

 if (sk->sk_family == PF_INET &&
     LOOPBACK(inet_sk(sk)->inet_rcv_saddr))
  return -EADDRNOTAVAIL;

 sk->sk_backlog_rcv = listen_backlog_rcv;
 clisten = kmalloc(sizeof(*clisten), GFP_KERNEL);
 if (!clisten)
  return -ENOMEM;
 clisten->cdev = cdev;
 clisten->sk = sk;
 mutex_lock(&notify_mutex);
 err = raw_notifier_call_chain(&listen_notify_list,
          CHTLS_LISTEN_START, clisten);
 mutex_unlock(&notify_mutex);
 return err;
}
