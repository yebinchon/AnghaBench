
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_channel; } ;


 int cancel_delayed_work_sync (int *) ;
 int hv_poll_channel (int ,int ) ;
 int kvp_host_handshake_work ;
 int kvp_poll_wrapper ;
 TYPE_1__ kvp_transaction ;
 int pr_debug (char*) ;

__attribute__((used)) static void kvp_register_done(void)
{




 pr_debug("KVP: userspace daemon registered\n");
 cancel_delayed_work_sync(&kvp_host_handshake_work);
 hv_poll_channel(kvp_transaction.recv_channel, kvp_poll_wrapper);
}
