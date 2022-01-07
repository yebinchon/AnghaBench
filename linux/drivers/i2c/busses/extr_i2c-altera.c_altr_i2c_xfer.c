
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct altr_i2c_dev {int dummy; } ;


 int altr_i2c_xfer_msg (struct altr_i2c_dev*,int ) ;
 struct altr_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int
altr_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 struct altr_i2c_dev *idev = i2c_get_adapdata(adap);
 int i, ret;

 for (i = 0; i < num; i++) {
  ret = altr_i2c_xfer_msg(idev, msgs++);
  if (ret)
   return ret;
 }
 return num;
}
