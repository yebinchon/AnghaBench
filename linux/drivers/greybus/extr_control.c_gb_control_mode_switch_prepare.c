
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_control {int connection; } ;


 int gb_connection_mode_switch_prepare (int ) ;

void gb_control_mode_switch_prepare(struct gb_control *control)
{
 gb_connection_mode_switch_prepare(control->connection);
}
