
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_control {int dev; } ;


 int dev_err (int *,char*,int) ;
 int device_add (int *) ;

int gb_control_add(struct gb_control *control)
{
 int ret;

 ret = device_add(&control->dev);
 if (ret) {
  dev_err(&control->dev,
   "failed to register control device: %d\n",
   ret);
  return ret;
 }

 return 0;
}
