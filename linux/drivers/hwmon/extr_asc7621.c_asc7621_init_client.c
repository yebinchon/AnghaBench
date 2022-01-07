
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; int adapter; int dev; } ;


 int dev_err (int *,char*,int ,int ) ;
 int i2c_adapter_id (int ) ;
 int read_byte (struct i2c_client*,int) ;
 int write_byte (struct i2c_client*,int,int) ;

__attribute__((used)) static void asc7621_init_client(struct i2c_client *client)
{
 int value;



 value = read_byte(client, 0x40);

 if (value & 0x02) {
  dev_err(&client->dev,
   "Client (%d,0x%02x) config is locked.\n",
   i2c_adapter_id(client->adapter), client->addr);
 }
 if (!(value & 0x04)) {
  dev_err(&client->dev, "Client (%d,0x%02x) is not ready.\n",
   i2c_adapter_id(client->adapter), client->addr);
 }






 value = (value & ~0x02) | 0x01;
 write_byte(client, 0x40, value & 0xff);

}
