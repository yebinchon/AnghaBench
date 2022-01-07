
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct as3645a {struct i2c_client* client; } ;


 int dev_dbg (int *,char*,int ,int,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int as3645a_read(struct as3645a *flash, u8 addr)
{
 struct i2c_client *client = flash->client;
 int rval;

 rval = i2c_smbus_read_byte_data(client, addr);

 dev_dbg(&client->dev, "Read Addr:%02X Val:%02X %s\n", addr, rval,
  rval < 0 ? "fail" : "ok");

 return rval;
}
