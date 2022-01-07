
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dev; } ;


 int EOPNOTSUPP ;
 int WARN (int,char*,int ) ;
 int dev_name (int *) ;

__attribute__((used)) static int stu300_xfer_todo(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{

 WARN(1, "%s: atomic transfers not implemented\n", dev_name(&adap->dev));
 return -EOPNOTSUPP;
}
