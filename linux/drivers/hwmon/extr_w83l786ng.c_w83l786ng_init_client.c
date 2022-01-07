
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int W83L786NG_REG_CONFIG ;
 scalar_t__ reset ;
 int w83l786ng_read_value (struct i2c_client*,int ) ;
 int w83l786ng_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static void w83l786ng_init_client(struct i2c_client *client)
{
 u8 tmp;

 if (reset)
  w83l786ng_write_value(client, W83L786NG_REG_CONFIG, 0x80);


 tmp = w83l786ng_read_value(client, W83L786NG_REG_CONFIG);
 if (!(tmp & 0x01))
  w83l786ng_write_value(client, W83L786NG_REG_CONFIG, tmp | 0x01);
}
