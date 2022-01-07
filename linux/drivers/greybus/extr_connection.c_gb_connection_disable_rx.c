
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {scalar_t__ state; int mutex; int lock; } ;


 int ESHUTDOWN ;
 scalar_t__ GB_CONNECTION_STATE_ENABLED ;
 scalar_t__ GB_CONNECTION_STATE_ENABLED_TX ;
 int gb_connection_flush_incoming_operations (struct gb_connection*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_gb_connection_disable (struct gb_connection*) ;

void gb_connection_disable_rx(struct gb_connection *connection)
{
 mutex_lock(&connection->mutex);

 spin_lock_irq(&connection->lock);
 if (connection->state != GB_CONNECTION_STATE_ENABLED) {
  spin_unlock_irq(&connection->lock);
  goto out_unlock;
 }
 connection->state = GB_CONNECTION_STATE_ENABLED_TX;
 gb_connection_flush_incoming_operations(connection, -ESHUTDOWN);
 spin_unlock_irq(&connection->lock);

 trace_gb_connection_disable(connection);

out_unlock:
 mutex_unlock(&connection->mutex);
}
