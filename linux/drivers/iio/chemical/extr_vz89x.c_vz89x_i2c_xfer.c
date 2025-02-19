
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vz89x_data {int buffer; struct i2c_client* client; struct vz89x_chip_data* chip; } ;
struct vz89x_chip_data {int read_size; int write_size; } ;
struct i2c_msg {int flags; char* buf; int len; int addr; } ;
struct i2c_client {int flags; int adapter; int addr; } ;


 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int vz89x_i2c_xfer(struct vz89x_data *data, u8 cmd)
{
 const struct vz89x_chip_data *chip = data->chip;
 struct i2c_client *client = data->client;
 struct i2c_msg msg[2];
 int ret;
 u8 buf[6] = { cmd, 0, 0, 0, 0, 0xf3 };

 msg[0].addr = client->addr;
 msg[0].flags = client->flags;
 msg[0].len = chip->write_size;
 msg[0].buf = (char *) &buf;

 msg[1].addr = client->addr;
 msg[1].flags = client->flags | I2C_M_RD;
 msg[1].len = chip->read_size;
 msg[1].buf = (char *) &data->buffer;

 ret = i2c_transfer(client->adapter, msg, 2);

 return (ret == 2) ? 0 : ret;
}
