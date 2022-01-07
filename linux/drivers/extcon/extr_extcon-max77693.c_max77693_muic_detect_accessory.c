
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_muic_info {int mutex; int dev; int status; TYPE_1__* max77693; } ;
struct TYPE_2__ {int regmap_muic; } ;


 int MAX77693_CABLE_GROUP_ADC ;
 int MAX77693_CABLE_GROUP_CHG ;
 int MAX77693_CHARGER_TYPE_NONE ;
 int MAX77693_MUIC_ADC_OPEN ;
 int MAX77693_MUIC_REG_STATUS1 ;
 int dev_err (int ,char*) ;
 int max77693_muic_adc_handler (struct max77693_muic_info*) ;
 int max77693_muic_chg_handler (struct max77693_muic_info*) ;
 int max77693_muic_get_cable_type (struct max77693_muic_info*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int ,int) ;

__attribute__((used)) static int max77693_muic_detect_accessory(struct max77693_muic_info *info)
{
 int ret = 0;
 int adc;
 int chg_type;
 bool attached;

 mutex_lock(&info->mutex);


 ret = regmap_bulk_read(info->max77693->regmap_muic,
   MAX77693_MUIC_REG_STATUS1, info->status, 2);
 if (ret) {
  dev_err(info->dev, "failed to read MUIC register\n");
  mutex_unlock(&info->mutex);
  return ret;
 }

 adc = max77693_muic_get_cable_type(info, MAX77693_CABLE_GROUP_ADC,
     &attached);
 if (attached && adc != MAX77693_MUIC_ADC_OPEN) {
  ret = max77693_muic_adc_handler(info);
  if (ret < 0) {
   dev_err(info->dev, "Cannot detect accessory\n");
   mutex_unlock(&info->mutex);
   return ret;
  }
 }

 chg_type = max77693_muic_get_cable_type(info, MAX77693_CABLE_GROUP_CHG,
     &attached);
 if (attached && chg_type != MAX77693_CHARGER_TYPE_NONE) {
  ret = max77693_muic_chg_handler(info);
  if (ret < 0) {
   dev_err(info->dev, "Cannot detect charger accessory\n");
   mutex_unlock(&info->mutex);
   return ret;
  }
 }

 mutex_unlock(&info->mutex);

 return 0;
}
