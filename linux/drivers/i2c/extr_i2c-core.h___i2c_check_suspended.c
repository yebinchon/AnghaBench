
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; int locked_flags; } ;


 int ESHUTDOWN ;
 int I2C_ALF_IS_SUSPENDED ;
 int I2C_ALF_SUSPEND_REPORTED ;
 int dev_WARN (int *,char*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int __i2c_check_suspended(struct i2c_adapter *adap)
{
 if (test_bit(I2C_ALF_IS_SUSPENDED, &adap->locked_flags)) {
  if (!test_and_set_bit(I2C_ALF_SUSPEND_REPORTED, &adap->locked_flags))
   dev_WARN(&adap->dev, "Transfer while suspended\n");
  return -ESHUTDOWN;
 }

 return 0;
}
