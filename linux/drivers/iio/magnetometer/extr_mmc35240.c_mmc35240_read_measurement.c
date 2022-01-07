
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mmc35240_data {int regmap; } ;
typedef int __le16 ;


 int MMC35240_REG_XOUT_L ;
 int mmc35240_take_measurement (struct mmc35240_data*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int mmc35240_read_measurement(struct mmc35240_data *data, __le16 buf[3])
{
 int ret;

 ret = mmc35240_take_measurement(data);
 if (ret < 0)
  return ret;

 return regmap_bulk_read(data->regmap, MMC35240_REG_XOUT_L, (u8 *)buf,
    3 * sizeof(__le16));
}
