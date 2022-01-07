
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_protocol; } ;
struct chtls_listen {struct sock* sk; struct chtls_dev* cdev; } ;
struct chtls_dev {int dummy; } ;


 int CHTLS_LISTEN_STOP ;
 int GFP_KERNEL ;
 scalar_t__ IPPROTO_TCP ;
 struct chtls_listen* kmalloc (int,int ) ;
 int listen_notify_list ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_mutex ;
 int raw_notifier_call_chain (int *,int ,struct chtls_listen*) ;

__attribute__((used)) static void chtls_stop_listen(struct chtls_dev *cdev, struct sock *sk)
{
 struct chtls_listen *clisten;

 if (sk->sk_protocol != IPPROTO_TCP)
  return;

 clisten = kmalloc(sizeof(*clisten), GFP_KERNEL);
 if (!clisten)
  return;
 clisten->cdev = cdev;
 clisten->sk = sk;
 mutex_lock(&notify_mutex);
 raw_notifier_call_chain(&listen_notify_list,
    CHTLS_LISTEN_STOP, clisten);
 mutex_unlock(&notify_mutex);
}
