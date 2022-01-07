
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef int cmd ;


 int RAYDIUM_WAIT_READY ;
 int dev_err (int *,char*,int) ;
 int raydium_i2c_write_object (struct i2c_client*,int const*,int,int ) ;

__attribute__((used)) static int raydium_i2c_disable_watch_dog(struct i2c_client *client)
{
 static const u8 cmd[] = { 0x0A, 0xAA };
 int error;

 error = raydium_i2c_write_object(client, cmd, sizeof(cmd),
      RAYDIUM_WAIT_READY);
 if (error) {
  dev_err(&client->dev, "disable watchdog command failed: %d\n",
   error);
  return error;
 }

 return 0;
}
