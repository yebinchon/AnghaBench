
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm78_data {int lock; scalar_t__ isa_addr; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ LM78_ADDR_REG_OFFSET ;
 scalar_t__ LM78_DATA_REG_OFFSET ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int inb_p (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static int lm78_read_value(struct lm78_data *data, u8 reg)
{
 struct i2c_client *client = data->client;
  return i2c_smbus_read_byte_data(client, reg);
}
