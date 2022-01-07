
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {int waiters; int request; int work; } ;


 scalar_t__ WARN_ON (int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int gb_message_cancel (int ) ;
 int gb_operation_cancellation_queue ;
 int gb_operation_completion_wq ;
 int gb_operation_is_active (struct gb_operation*) ;
 int gb_operation_is_incoming (struct gb_operation*) ;
 scalar_t__ gb_operation_result_set (struct gb_operation*,int) ;
 int queue_work (int ,int *) ;
 int trace_gb_message_cancel_outgoing (int ) ;
 int wait_event (int ,int) ;

void gb_operation_cancel(struct gb_operation *operation, int errno)
{
 if (WARN_ON(gb_operation_is_incoming(operation)))
  return;

 if (gb_operation_result_set(operation, errno)) {
  gb_message_cancel(operation->request);
  queue_work(gb_operation_completion_wq, &operation->work);
 }
 trace_gb_message_cancel_outgoing(operation->request);

 atomic_inc(&operation->waiters);
 wait_event(gb_operation_cancellation_queue,
     !gb_operation_is_active(operation));
 atomic_dec(&operation->waiters);
}
