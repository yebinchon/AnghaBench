
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_control {int dev; } ;


 int put_device (int *) ;

void gb_control_put(struct gb_control *control)
{
 put_device(&control->dev);
}
