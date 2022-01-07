
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmd_count; int cmds; int * backlog; } ;


 int INIT_LIST_HEAD (int *) ;
 int ccp_present () ;
 int ccp_register_algs () ;
 int ccp_unregister_algs () ;
 int pr_err (char*) ;
 TYPE_1__ req_queue ;
 int req_queue_lock ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ccp_crypto_init(void)
{
 int ret;

 ret = ccp_present();
 if (ret) {
  pr_err("Cannot load: there are no available CCPs\n");
  return ret;
 }

 spin_lock_init(&req_queue_lock);
 INIT_LIST_HEAD(&req_queue.cmds);
 req_queue.backlog = &req_queue.cmds;
 req_queue.cmd_count = 0;

 ret = ccp_register_algs();
 if (ret)
  ccp_unregister_algs();

 return ret;
}
