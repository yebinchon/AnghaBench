
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {int callback_event; } ;
struct TYPE_2__ {int state; } ;


 int HVUTIL_READY ;
 TYPE_1__ kvp_transaction ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void kvp_poll_wrapper(void *channel)
{

 kvp_transaction.state = HVUTIL_READY;
 tasklet_schedule(&((struct vmbus_channel *)channel)->callback_event);
}
