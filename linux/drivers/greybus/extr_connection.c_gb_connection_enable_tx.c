
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {scalar_t__ state; int mutex; } ;


 int EINVAL ;
 scalar_t__ GB_CONNECTION_STATE_ENABLED ;
 scalar_t__ GB_CONNECTION_STATE_ENABLED_TX ;
 int _gb_connection_enable (struct gb_connection*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_gb_connection_enable (struct gb_connection*) ;

int gb_connection_enable_tx(struct gb_connection *connection)
{
 int ret = 0;

 mutex_lock(&connection->mutex);

 if (connection->state == GB_CONNECTION_STATE_ENABLED) {
  ret = -EINVAL;
  goto out_unlock;
 }

 if (connection->state == GB_CONNECTION_STATE_ENABLED_TX)
  goto out_unlock;

 ret = _gb_connection_enable(connection, 0);
 if (!ret)
  trace_gb_connection_enable(connection);

out_unlock:
 mutex_unlock(&connection->mutex);

 return ret;
}
