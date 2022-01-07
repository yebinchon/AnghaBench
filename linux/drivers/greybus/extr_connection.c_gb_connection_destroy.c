
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {scalar_t__ state; int hd_cport_id; int hd; int wq; int hd_links; int bundle_links; } ;


 int CPORT_ID_BAD ;
 scalar_t__ GB_CONNECTION_STATE_DISABLED ;
 scalar_t__ WARN_ON (int) ;
 int destroy_workqueue (int ) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_mutex ;
 int gb_connection_put (struct gb_connection*) ;
 int gb_connections_lock ;
 int gb_hd_cport_release (int ,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gb_connection_destroy(struct gb_connection *connection)
{
 if (!connection)
  return;

 if (WARN_ON(connection->state != GB_CONNECTION_STATE_DISABLED))
  gb_connection_disable(connection);

 mutex_lock(&gb_connection_mutex);

 spin_lock_irq(&gb_connections_lock);
 list_del(&connection->bundle_links);
 list_del(&connection->hd_links);
 spin_unlock_irq(&gb_connections_lock);

 destroy_workqueue(connection->wq);

 gb_hd_cport_release(connection->hd, connection->hd_cport_id);
 connection->hd_cport_id = CPORT_ID_BAD;

 mutex_unlock(&gb_connection_mutex);

 gb_connection_put(connection);
}
