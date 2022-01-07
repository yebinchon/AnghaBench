
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgdt330x_config {int dummy; } ;
struct TYPE_2__ {int driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_board_info {struct lgdt330x_config* platform_data; int addr; int type; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;


 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 struct dvb_frontend* lgdt330x_get_dvb_frontend (struct i2c_client*) ;
 int strscpy (int ,char*,int) ;

struct dvb_frontend *lgdt330x_attach(const struct lgdt330x_config *_config,
         u8 demod_address,
         struct i2c_adapter *i2c)
{
 struct i2c_client *client;
 struct i2c_board_info board_info = {};
 struct lgdt330x_config config = *_config;

 strscpy(board_info.type, "lgdt330x", sizeof(board_info.type));
 board_info.addr = demod_address;
 board_info.platform_data = &config;
 client = i2c_new_device(i2c, &board_info);
 if (!client || !client->dev.driver)
  return ((void*)0);

 return lgdt330x_get_dvb_frontend(client);
}
