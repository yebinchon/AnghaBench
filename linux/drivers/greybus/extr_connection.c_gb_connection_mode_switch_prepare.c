
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {int mode_switch; } ;



void gb_connection_mode_switch_prepare(struct gb_connection *connection)
{
 connection->mode_switch = 1;
}
