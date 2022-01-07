
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dev; } ;
struct dme1737_data {scalar_t__ addr; struct i2c_client* client; } ;
typedef scalar_t__ s32 ;


 int DO_REPORT ;
 int dev_warn (int *,char*,scalar_t__,int ) ;
 scalar_t__ i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;
 scalar_t__ inb (scalar_t__) ;
 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static u8 dme1737_read(const struct dme1737_data *data, u8 reg)
{
 struct i2c_client *client = data->client;
 s32 val;

 if (client) {
  val = i2c_smbus_read_byte_data(client, reg);

  if (val < 0) {
   dev_warn(&client->dev,
     "Read from register 0x%02x failed! %s\n",
     reg, DO_REPORT);
  }
 } else {
  outb(reg, data->addr);
  val = inb(data->addr + 1);
 }

 return val;
}
