
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si1133_data {int regmap; } ;
struct iio_dev {int dev; } ;


 int ENODEV ;
 unsigned int SI1133_PART_ID ;
 int SI1133_REG_MFR_ID ;
 int SI1133_REG_PART_ID ;
 int SI1133_REG_REV_ID ;
 int dev_err (int *,char*,unsigned int,unsigned int) ;
 int dev_info (int *,char*,unsigned int,unsigned int,unsigned int) ;
 struct si1133_data* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int si1133_validate_ids(struct iio_dev *iio_dev)
{
 struct si1133_data *data = iio_priv(iio_dev);

 unsigned int part_id, rev_id, mfr_id;
 int err;

 err = regmap_read(data->regmap, SI1133_REG_PART_ID, &part_id);
 if (err)
  return err;

 err = regmap_read(data->regmap, SI1133_REG_REV_ID, &rev_id);
 if (err)
  return err;

 err = regmap_read(data->regmap, SI1133_REG_MFR_ID, &mfr_id);
 if (err)
  return err;

 dev_info(&iio_dev->dev,
   "Device ID part %#02hhx rev %#02hhx mfr %#02hhx\n",
   part_id, rev_id, mfr_id);
 if (part_id != SI1133_PART_ID) {
  dev_err(&iio_dev->dev,
   "Part ID mismatch got %#02hhx, expected %#02x\n",
   part_id, SI1133_PART_ID);
  return -ENODEV;
 }

 return 0;
}
