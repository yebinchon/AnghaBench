
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {int mode_switch; } ;


 int gb_connection_hd_cport_clear (struct gb_connection*) ;
 int gb_connection_hd_cport_disable (struct gb_connection*) ;
 int gb_connection_svc_connection_destroy (struct gb_connection*) ;

void gb_connection_mode_switch_complete(struct gb_connection *connection)
{
 gb_connection_svc_connection_destroy(connection);
 gb_connection_hd_cport_clear(connection);

 gb_connection_hd_cport_disable(connection);

 connection->mode_switch = 0;
}
