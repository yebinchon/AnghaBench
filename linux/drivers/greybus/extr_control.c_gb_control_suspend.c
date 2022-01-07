
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_control {int connection; } ;


 int gb_connection_disable (int ) ;

int gb_control_suspend(struct gb_control *control)
{
 gb_connection_disable(control->connection);

 return 0;
}
