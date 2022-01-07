
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {int dummy; } ;


 int gb_connection_cport_shutdown (struct gb_connection*,int) ;

__attribute__((used)) static int
gb_connection_cport_shutdown_phase_2(struct gb_connection *connection)
{
 return gb_connection_cport_shutdown(connection, 2);
}
