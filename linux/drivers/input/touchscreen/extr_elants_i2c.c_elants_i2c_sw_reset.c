
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef int soft_rst_cmd ;


 int dev_err (int *,char*,int) ;
 int elants_i2c_send (struct i2c_client*,int const*,int) ;
 int msleep (int) ;

__attribute__((used)) static int elants_i2c_sw_reset(struct i2c_client *client)
{
 const u8 soft_rst_cmd[] = { 0x77, 0x77, 0x77, 0x77 };
 int error;

 error = elants_i2c_send(client, soft_rst_cmd,
    sizeof(soft_rst_cmd));
 if (error) {
  dev_err(&client->dev, "software reset failed: %d\n", error);
  return error;
 }





 msleep(30);

 return 0;
}
