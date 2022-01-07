
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_control {int dev; } ;


 int device_del (int *) ;
 scalar_t__ device_is_registered (int *) ;

void gb_control_del(struct gb_control *control)
{
 if (device_is_registered(&control->dev))
  device_del(&control->dev);
}
