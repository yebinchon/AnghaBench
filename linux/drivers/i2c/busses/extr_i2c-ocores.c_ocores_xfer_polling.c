
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int i2c_get_adapdata (struct i2c_adapter*) ;
 int ocores_xfer_core (int ,struct i2c_msg*,int,int) ;

__attribute__((used)) static int ocores_xfer_polling(struct i2c_adapter *adap,
          struct i2c_msg *msgs, int num)
{
 return ocores_xfer_core(i2c_get_adapdata(adap), msgs, num, 1);
}
