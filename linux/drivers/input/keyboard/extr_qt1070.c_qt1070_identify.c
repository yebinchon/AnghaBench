
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int CHIP_ID ;
 int FW_VERSION ;
 int QT1070_CHIP_ID ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int qt1070_read (struct i2c_client*,int ) ;

__attribute__((used)) static bool qt1070_identify(struct i2c_client *client)
{
 int id, ver;


 id = qt1070_read(client, CHIP_ID);
 if (id != QT1070_CHIP_ID) {
  dev_err(&client->dev, "ID %d not supported\n", id);
  return 0;
 }


 ver = qt1070_read(client, FW_VERSION);
 if (ver < 0) {
  dev_err(&client->dev, "could not read the firmware version\n");
  return 0;
 }

 dev_info(&client->dev, "AT42QT1070 firmware version %x\n", ver);

 return 1;
}
