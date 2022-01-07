
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* recv_channel; } ;
struct TYPE_3__ {int callback_event; } ;


 TYPE_2__ kvp_transaction ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void kvp_host_handshake_func(struct work_struct *dummy)
{
 tasklet_schedule(&kvp_transaction.recv_channel->callback_event);
}
