
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; int dev; } ;
typedef int boot_cmd ;


 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int) ;
 int elants_i2c_send (struct i2c_client*,int const*,int) ;

__attribute__((used)) static int elants_i2c_fastboot(struct i2c_client *client)
{
 const u8 boot_cmd[] = { 0x4D, 0x61, 0x69, 0x6E };
 int error;

 error = elants_i2c_send(client, boot_cmd, sizeof(boot_cmd));
 if (error) {
  dev_err(&client->dev, "boot failed: %d\n", error);
  return error;
 }

 dev_dbg(&client->dev, "boot success -- 0x%x\n", client->addr);
 return 0;
}
