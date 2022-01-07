
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {scalar_t__ state; int mutex; int lock; } ;


 int ESHUTDOWN ;
 scalar_t__ GB_CONNECTION_STATE_DISABLED ;
 int gb_connection_cancel_operations (struct gb_connection*,int ) ;
 int gb_connection_hd_cport_clear (struct gb_connection*) ;
 int gb_connection_hd_cport_disable (struct gb_connection*) ;
 int gb_connection_hd_cport_flush (struct gb_connection*) ;
 int gb_connection_svc_connection_destroy (struct gb_connection*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_gb_connection_disable (struct gb_connection*) ;

void gb_connection_disable_forced(struct gb_connection *connection)
{
 mutex_lock(&connection->mutex);

 if (connection->state == GB_CONNECTION_STATE_DISABLED)
  goto out_unlock;

 trace_gb_connection_disable(connection);

 spin_lock_irq(&connection->lock);
 connection->state = GB_CONNECTION_STATE_DISABLED;
 gb_connection_cancel_operations(connection, -ESHUTDOWN);
 spin_unlock_irq(&connection->lock);

 gb_connection_hd_cport_flush(connection);

 gb_connection_svc_connection_destroy(connection);
 gb_connection_hd_cport_clear(connection);

 gb_connection_hd_cport_disable(connection);
out_unlock:
 mutex_unlock(&connection->mutex);
}
