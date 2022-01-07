
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {scalar_t__ active; int waiters; int links; struct gb_connection* connection; } ;
struct gb_connection {int lock; } ;


 scalar_t__ atomic_read (int *) ;
 int gb_operation_cancellation_queue ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_gb_operation_put_active (struct gb_operation*) ;
 int wake_up (int *) ;

__attribute__((used)) static void gb_operation_put_active(struct gb_operation *operation)
{
 struct gb_connection *connection = operation->connection;
 unsigned long flags;

 spin_lock_irqsave(&connection->lock, flags);

 trace_gb_operation_put_active(operation);

 if (--operation->active == 0) {
  list_del(&operation->links);
  if (atomic_read(&operation->waiters))
   wake_up(&gb_operation_cancellation_queue);
 }
 spin_unlock_irqrestore(&connection->lock, flags);
}
