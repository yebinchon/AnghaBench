
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int omap_i2c_xfer_common (struct i2c_adapter*,struct i2c_msg*,int,int) ;

__attribute__((used)) static int
omap_i2c_xfer_irq(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
{
 return omap_i2c_xfer_common(adap, msgs, num, 0);
}
