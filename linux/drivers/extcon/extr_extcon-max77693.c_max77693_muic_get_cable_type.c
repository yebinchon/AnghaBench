
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_muic_info {int* status; int prev_cable_type; int prev_cable_type_gnd; int prev_chg_type; int dev; } ;
typedef enum max77693_muic_cable_group { ____Placeholder_max77693_muic_cable_group } max77693_muic_cable_group ;


 int EINVAL ;




 int MAX77693_CHARGER_TYPE_NONE ;
 int MAX77693_MUIC_ADC_OPEN ;
 int MAX77693_STATUS1_ADC1K_MASK ;
 int MAX77693_STATUS1_ADC1K_SHIFT ;
 int MAX77693_STATUS1_ADCLOW_MASK ;
 int MAX77693_STATUS1_ADCLOW_SHIFT ;
 int MAX77693_STATUS1_ADC_MASK ;
 int MAX77693_STATUS1_ADC_SHIFT ;
 int MAX77693_STATUS2_CHGTYP_MASK ;
 int MAX77693_STATUS2_CHGTYP_SHIFT ;
 int MAX77693_STATUS2_VBVOLT_MASK ;
 int MAX77693_STATUS2_VBVOLT_SHIFT ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int max77693_muic_get_cable_type(struct max77693_muic_info *info,
  enum max77693_muic_cable_group group, bool *attached)
{
 int cable_type = 0;
 int adc;
 int adc1k;
 int adclow;
 int vbvolt;
 int chg_type;

 switch (group) {
 case 131:




  adc = info->status[0] & MAX77693_STATUS1_ADC_MASK;
  adc >>= MAX77693_STATUS1_ADC_SHIFT;






  if (adc == MAX77693_MUIC_ADC_OPEN) {
   *attached = 0;

   cable_type = info->prev_cable_type;
   info->prev_cable_type = MAX77693_MUIC_ADC_OPEN;
  } else {
   *attached = 1;

   cable_type = info->prev_cable_type = adc;
  }
  break;
 case 130:




  adc = info->status[0] & MAX77693_STATUS1_ADC_MASK;
  adc >>= MAX77693_STATUS1_ADC_SHIFT;






  if (adc == MAX77693_MUIC_ADC_OPEN) {
   *attached = 0;

   cable_type = info->prev_cable_type_gnd;
   info->prev_cable_type_gnd = MAX77693_MUIC_ADC_OPEN;
  } else {
   *attached = 1;

   adclow = info->status[0] & MAX77693_STATUS1_ADCLOW_MASK;
   adclow >>= MAX77693_STATUS1_ADCLOW_SHIFT;
   adc1k = info->status[0] & MAX77693_STATUS1_ADC1K_MASK;
   adc1k >>= MAX77693_STATUS1_ADC1K_SHIFT;

   vbvolt = info->status[1] & MAX77693_STATUS2_VBVOLT_MASK;
   vbvolt >>= MAX77693_STATUS2_VBVOLT_SHIFT;
   cable_type = ((0x1 << 8)
     | (vbvolt << 2)
     | (adclow << 1)
     | adc1k);

   info->prev_cable_type = adc;
   info->prev_cable_type_gnd = cable_type;
  }

  break;
 case 129:




  chg_type = info->status[1] & MAX77693_STATUS2_CHGTYP_MASK;
  chg_type >>= MAX77693_STATUS2_CHGTYP_SHIFT;

  if (chg_type == MAX77693_CHARGER_TYPE_NONE) {
   *attached = 0;

   cable_type = info->prev_chg_type;
   info->prev_chg_type = MAX77693_CHARGER_TYPE_NONE;
  } else {
   *attached = 1;






   cable_type = info->prev_chg_type = chg_type;
  }

  break;
 case 128:




  adc = info->status[0] & MAX77693_STATUS1_ADC_MASK;
  adc >>= MAX77693_STATUS1_ADC_SHIFT;
  chg_type = info->status[1] & MAX77693_STATUS2_CHGTYP_MASK;
  chg_type >>= MAX77693_STATUS2_CHGTYP_SHIFT;

  if (adc == MAX77693_MUIC_ADC_OPEN
    && chg_type == MAX77693_CHARGER_TYPE_NONE)
   *attached = 0;
  else
   *attached = 1;





  vbvolt = info->status[1] & MAX77693_STATUS2_VBVOLT_MASK;
  vbvolt >>= MAX77693_STATUS2_VBVOLT_SHIFT;

  cable_type = vbvolt;
  break;
 default:
  dev_err(info->dev, "Unknown cable group (%d)\n", group);
  cable_type = -EINVAL;
  break;
 }

 return cable_type;
}
