
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_muic_info {int mutex; int dev; int status; int muic; } ;


 int MAX8997_CABLE_GROUP_ADC ;
 int MAX8997_CABLE_GROUP_CHG ;
 int MAX8997_CHARGER_TYPE_NONE ;
 int MAX8997_MUIC_ADC_OPEN ;
 int MAX8997_MUIC_REG_STATUS1 ;
 int dev_err (int ,char*) ;
 int max8997_bulk_read (int ,int ,int,int ) ;
 int max8997_muic_adc_handler (struct max8997_muic_info*) ;
 int max8997_muic_chg_handler (struct max8997_muic_info*) ;
 int max8997_muic_get_cable_type (struct max8997_muic_info*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max8997_muic_detect_dev(struct max8997_muic_info *info)
{
 int ret = 0;
 int adc;
 int chg_type;
 bool attached;

 mutex_lock(&info->mutex);


 ret = max8997_bulk_read(info->muic,
   MAX8997_MUIC_REG_STATUS1, 2, info->status);
 if (ret) {
  dev_err(info->dev, "failed to read MUIC register\n");
  mutex_unlock(&info->mutex);
  return ret;
 }

 adc = max8997_muic_get_cable_type(info, MAX8997_CABLE_GROUP_ADC,
     &attached);
 if (attached && adc != MAX8997_MUIC_ADC_OPEN) {
  ret = max8997_muic_adc_handler(info);
  if (ret < 0) {
   dev_err(info->dev, "Cannot detect ADC cable\n");
   mutex_unlock(&info->mutex);
   return ret;
  }
 }

 chg_type = max8997_muic_get_cable_type(info, MAX8997_CABLE_GROUP_CHG,
     &attached);
 if (attached && chg_type != MAX8997_CHARGER_TYPE_NONE) {
  ret = max8997_muic_chg_handler(info);
  if (ret < 0) {
   dev_err(info->dev, "Cannot detect charger cable\n");
   mutex_unlock(&info->mutex);
   return ret;
  }
 }

 mutex_unlock(&info->mutex);

 return 0;
}
