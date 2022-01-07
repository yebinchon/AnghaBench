
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int dummy; } ;
struct picolcd_data {struct rc_dev* rc_dev; } ;


 int rc_unregister_device (struct rc_dev*) ;

void picolcd_exit_cir(struct picolcd_data *data)
{
 struct rc_dev *rdev = data->rc_dev;

 data->rc_dev = ((void*)0);
 rc_unregister_device(rdev);
}
