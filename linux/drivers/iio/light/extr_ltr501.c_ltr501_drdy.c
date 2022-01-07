
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ltr501_data {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int LTR501_ALS_PS_STATUS ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int ltr501_drdy(struct ltr501_data *data, u8 drdy_mask)
{
 int tries = 100;
 int ret, status;

 while (tries--) {
  ret = regmap_read(data->regmap, LTR501_ALS_PS_STATUS, &status);
  if (ret < 0)
   return ret;
  if ((status & drdy_mask) == drdy_mask)
   return 0;
  msleep(25);
 }

 dev_err(&data->client->dev, "ltr501_drdy() failed, data not ready\n");
 return -EIO;
}
