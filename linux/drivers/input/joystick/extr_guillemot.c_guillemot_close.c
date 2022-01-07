
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct guillemot {int gameport; } ;


 int gameport_stop_polling (int ) ;
 struct guillemot* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void guillemot_close(struct input_dev *dev)
{
 struct guillemot *guillemot = input_get_drvdata(dev);

 gameport_stop_polling(guillemot->gameport);
}
