
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_channel; } ;


 int fcopy_poll_wrapper ;
 TYPE_1__ fcopy_transaction ;
 int hv_poll_channel (int ,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static void fcopy_register_done(void)
{
 pr_debug("FCP: userspace daemon registered\n");
 hv_poll_channel(fcopy_transaction.recv_channel, fcopy_poll_wrapper);
}
