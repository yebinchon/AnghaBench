
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int EINVAL ;
 int IQS5XX_BL_ATTEMPTS ;
 int IQS5XX_BL_CMD_VER ;
 int IQS5XX_NUM_RETRIES ;
 int dev_err (int *,char*,int) ;
 int iqs5xx_bl_cmd (struct i2c_client*,int ,int ) ;
 int iqs5xx_reset (struct i2c_client*) ;

__attribute__((used)) static int iqs5xx_bl_open(struct i2c_client *client)
{
 int error, i, j;






 for (i = 0; i < IQS5XX_BL_ATTEMPTS; i++) {
  iqs5xx_reset(client);

  for (j = 0; j < IQS5XX_NUM_RETRIES; j++) {
   error = iqs5xx_bl_cmd(client, IQS5XX_BL_CMD_VER, 0);
   if (!error || error == -EINVAL)
    return error;
  }
 }

 dev_err(&client->dev, "Failed to open bootloader: %d\n", error);

 return error;
}
