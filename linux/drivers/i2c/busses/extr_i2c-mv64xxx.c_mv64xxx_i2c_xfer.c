
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv64xxx_i2c_data {int num_msgs; struct i2c_msg* msgs; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int BUG_ON (int ) ;
 struct mv64xxx_i2c_data* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mv64xxx_i2c_can_offload (struct mv64xxx_i2c_data*) ;
 int mv64xxx_i2c_execute_msg (struct mv64xxx_i2c_data*,struct i2c_msg*,int) ;
 int mv64xxx_i2c_offload_xfer (struct mv64xxx_i2c_data*) ;

__attribute__((used)) static int
mv64xxx_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
{
 struct mv64xxx_i2c_data *drv_data = i2c_get_adapdata(adap);
 int rc, ret = num;

 BUG_ON(drv_data->msgs != ((void*)0));
 drv_data->msgs = msgs;
 drv_data->num_msgs = num;

 if (mv64xxx_i2c_can_offload(drv_data))
  rc = mv64xxx_i2c_offload_xfer(drv_data);
 else
  rc = mv64xxx_i2c_execute_msg(drv_data, &msgs[0], num == 1);

 if (rc < 0)
  ret = rc;

 drv_data->num_msgs = 0;
 drv_data->msgs = ((void*)0);

 return ret;
}
