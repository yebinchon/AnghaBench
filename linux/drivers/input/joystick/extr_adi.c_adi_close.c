
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct adi_port {int gameport; } ;


 int gameport_stop_polling (int ) ;
 struct adi_port* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void adi_close(struct input_dev *dev)
{
 struct adi_port *port = input_get_drvdata(dev);

 gameport_stop_polling(port->gameport);
}
