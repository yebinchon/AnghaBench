
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {scalar_t__ irq; } ;
typedef int s32 ;


 int disable_irq_nosync (scalar_t__) ;
 int enable_irq (scalar_t__) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int bma150_write_byte(struct i2c_client *client, u8 reg, u8 val)
{
 s32 ret;


 if (client->irq)
  disable_irq_nosync(client->irq);

 ret = i2c_smbus_write_byte_data(client, reg, val);

 if (client->irq)
  enable_irq(client->irq);

 return ret;
}
