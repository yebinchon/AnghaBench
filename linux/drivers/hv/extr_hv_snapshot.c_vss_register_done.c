
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_channel; } ;


 int hv_poll_channel (int ,int ) ;
 int pr_debug (char*) ;
 int vss_poll_wrapper ;
 TYPE_1__ vss_transaction ;

__attribute__((used)) static void vss_register_done(void)
{
 hv_poll_channel(vss_transaction.recv_channel, vss_poll_wrapper);
 pr_debug("VSS: userspace daemon registered\n");
}
