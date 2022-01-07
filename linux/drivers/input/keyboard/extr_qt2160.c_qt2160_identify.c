
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int QT2160_CMD_CHIPID ;
 int QT2160_CMD_CODEVER ;
 int QT2160_CMD_SUBVER ;
 int QT2160_VALID_CHIPID ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int,int) ;
 int qt2160_read (struct i2c_client*,int ) ;

__attribute__((used)) static bool qt2160_identify(struct i2c_client *client)
{
 int id, ver, rev;


 id = qt2160_read(client, QT2160_CMD_CHIPID);
 if (id != QT2160_VALID_CHIPID) {
  dev_err(&client->dev, "ID %d not supported\n", id);
  return 0;
 }


 ver = qt2160_read(client, QT2160_CMD_CODEVER);
 if (ver < 0) {
  dev_err(&client->dev, "could not get firmware version\n");
  return 0;
 }


 rev = qt2160_read(client, QT2160_CMD_SUBVER);
 if (rev < 0) {
  dev_err(&client->dev, "could not get firmware revision\n");
  return 0;
 }

 dev_info(&client->dev, "AT42QT2160 firmware version %d.%d.%d\n",
   ver >> 4, ver & 0xf, rev);

 return 1;
}
