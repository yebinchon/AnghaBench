
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct analog_port {int gameport; } ;


 int gameport_start_polling (int ) ;
 struct analog_port* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int analog_open(struct input_dev *dev)
{
 struct analog_port *port = input_get_drvdata(dev);

 gameport_start_polling(port->gameport);
 return 0;
}
