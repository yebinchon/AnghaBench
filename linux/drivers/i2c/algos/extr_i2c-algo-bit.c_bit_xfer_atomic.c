
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_algo_bit_data {int can_do_atomic; } ;
struct i2c_adapter {int dev; struct i2c_algo_bit_data* algo_data; } ;


 int bit_xfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static int bit_xfer_atomic(struct i2c_adapter *i2c_adap, struct i2c_msg msgs[],
      int num)
{
 struct i2c_algo_bit_data *adap = i2c_adap->algo_data;

 if (!adap->can_do_atomic)
  dev_warn(&i2c_adap->dev, "not flagged for atomic transfers\n");

 return bit_xfer(i2c_adap, msgs, num);
}
