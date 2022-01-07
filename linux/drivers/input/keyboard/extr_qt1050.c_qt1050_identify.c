
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qt1050_priv {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int QT1050_CHIP_ID ;
 unsigned int QT1050_CHIP_ID_VER ;
 int QT1050_FW_VERSION ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,unsigned int,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static bool qt1050_identify(struct qt1050_priv *ts)
{
 unsigned int val;
 int err;


 regmap_read(ts->regmap, QT1050_CHIP_ID, &val);
 if (val != QT1050_CHIP_ID_VER) {
  dev_err(&ts->client->dev, "ID %d not supported\n", val);
  return 0;
 }


 err = regmap_read(ts->regmap, QT1050_FW_VERSION, &val);
 if (err) {
  dev_err(&ts->client->dev, "could not read the firmware version\n");
  return 0;
 }

 dev_info(&ts->client->dev, "AT42QT1050 firmware version %1d.%1d\n",
   val >> 4, val & 0xf);

 return 1;
}
