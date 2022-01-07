
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptn5150_info {int dev; int regmap; } ;


 int EINVAL ;
 int PTN5150_REG_DEVICE_ID ;
 unsigned int PTN5150_REG_DEVICE_ID_VENDOR_MASK ;
 unsigned int PTN5150_REG_DEVICE_ID_VENDOR_SHIFT ;
 unsigned int PTN5150_REG_DEVICE_ID_VERSION_MASK ;
 unsigned int PTN5150_REG_DEVICE_ID_VERSION_SHIFT ;
 int PTN5150_REG_INT_REG_STATUS ;
 int PTN5150_REG_INT_STATUS ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,unsigned int,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ptn5150_init_dev_type(struct ptn5150_info *info)
{
 unsigned int reg_data, vendor_id, version_id;
 int ret;

 ret = regmap_read(info->regmap, PTN5150_REG_DEVICE_ID, &reg_data);
 if (ret) {
  dev_err(info->dev, "failed to read DEVICE_ID %d\n", ret);
  return -EINVAL;
 }

 vendor_id = ((reg_data & PTN5150_REG_DEVICE_ID_VENDOR_MASK) >>
    PTN5150_REG_DEVICE_ID_VENDOR_SHIFT);
 version_id = ((reg_data & PTN5150_REG_DEVICE_ID_VERSION_MASK) >>
    PTN5150_REG_DEVICE_ID_VERSION_SHIFT);

 dev_info(info->dev, "Device type: version: 0x%x, vendor: 0x%x\n",
       version_id, vendor_id);


 ret = regmap_read(info->regmap, PTN5150_REG_INT_STATUS, &reg_data);
 if (ret) {
  dev_err(info->dev,
   "failed to read PTN5150_REG_INT_STATUS %d\n",
   ret);
  return -EINVAL;
 }

 ret = regmap_read(info->regmap, PTN5150_REG_INT_REG_STATUS, &reg_data);
 if (ret) {
  dev_err(info->dev,
   "failed to read PTN5150_REG_INT_REG_STATUS %d\n", ret);
  return -EINVAL;
 }

 return 0;
}
