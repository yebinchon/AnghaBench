
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {int links; int active; struct gb_connection* connection; } ;
struct gb_connection {int state; int lock; int operations; } ;


 int ENOTCONN ;



 int gb_operation_is_core (struct gb_operation*) ;
 int gb_operation_is_incoming (struct gb_operation*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_gb_operation_get_active (struct gb_operation*) ;

__attribute__((used)) static int gb_operation_get_active(struct gb_operation *operation)
{
 struct gb_connection *connection = operation->connection;
 unsigned long flags;

 spin_lock_irqsave(&connection->lock, flags);
 switch (connection->state) {
 case 129:
  break;
 case 128:
  if (gb_operation_is_incoming(operation))
   goto err_unlock;
  break;
 case 130:
  if (!gb_operation_is_core(operation))
   goto err_unlock;
  break;
 default:
  goto err_unlock;
 }

 if (operation->active++ == 0)
  list_add_tail(&operation->links, &connection->operations);

 trace_gb_operation_get_active(operation);

 spin_unlock_irqrestore(&connection->lock, flags);

 return 0;

err_unlock:
 spin_unlock_irqrestore(&connection->lock, flags);

 return -ENOTCONN;
}
