
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {int active; struct gb_connection* connection; } ;
struct gb_connection {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool gb_operation_is_active(struct gb_operation *operation)
{
 struct gb_connection *connection = operation->connection;
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(&connection->lock, flags);
 ret = operation->active;
 spin_unlock_irqrestore(&connection->lock, flags);

 return ret;
}
