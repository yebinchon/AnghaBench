
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct chtls_listen {int sk; int cdev; } ;




 int NOTIFY_DONE ;
 int chtls_listen_start (int ,int ) ;
 int chtls_listen_stop (int ,int ) ;
 int kfree (struct chtls_listen*) ;

__attribute__((used)) static int listen_notify_handler(struct notifier_block *this,
     unsigned long event, void *data)
{
 struct chtls_listen *clisten;
 int ret = NOTIFY_DONE;

 clisten = (struct chtls_listen *)data;

 switch (event) {
 case 129:
  ret = chtls_listen_start(clisten->cdev, clisten->sk);
  kfree(clisten);
  break;
 case 128:
  chtls_listen_stop(clisten->cdev, clisten->sk);
  kfree(clisten);
  break;
 }
 return ret;
}
