
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct a3d {int gameport; } ;


 int gameport_stop_polling (int ) ;
 struct a3d* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void a3d_close(struct input_dev *dev)
{
 struct a3d *a3d = input_get_drvdata(dev);

 gameport_stop_polling(a3d->gameport);
}
