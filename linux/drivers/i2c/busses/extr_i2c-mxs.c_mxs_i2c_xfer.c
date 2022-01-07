
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int mxs_i2c_xfer_msg (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int mxs_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[],
   int num)
{
 int i;
 int err;

 for (i = 0; i < num; i++) {
  err = mxs_i2c_xfer_msg(adap, &msgs[i], i == (num - 1));
  if (err)
   return err;
 }

 return num;
}
