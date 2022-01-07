
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int dwork; int scan_rate_param; int no_decel_param; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 struct synaptics_i2c* kzalloc (int,int ) ;
 int no_decel ;
 int scan_rate ;
 int set_scan_rate (struct synaptics_i2c*,int ) ;
 int synaptics_i2c_work_handler ;

__attribute__((used)) static struct synaptics_i2c *synaptics_i2c_touch_create(struct i2c_client *client)
{
 struct synaptics_i2c *touch;

 touch = kzalloc(sizeof(struct synaptics_i2c), GFP_KERNEL);
 if (!touch)
  return ((void*)0);

 touch->client = client;
 touch->no_decel_param = no_decel;
 touch->scan_rate_param = scan_rate;
 set_scan_rate(touch, scan_rate);
 INIT_DELAYED_WORK(&touch->dwork, synaptics_i2c_work_handler);

 return touch;
}
