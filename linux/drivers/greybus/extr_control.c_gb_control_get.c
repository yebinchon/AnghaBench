
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_control {int dev; } ;


 int get_device (int *) ;

struct gb_control *gb_control_get(struct gb_control *control)
{
 get_device(&control->dev);

 return control;
}
