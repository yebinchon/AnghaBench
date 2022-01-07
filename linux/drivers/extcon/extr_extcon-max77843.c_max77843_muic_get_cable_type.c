
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77843_muic_info {int* status; int prev_cable_type; int prev_chg_type; int prev_gnd_type; int dev; } ;
typedef enum max77843_muic_cable_group { ____Placeholder_max77843_muic_cable_group } max77843_muic_cable_group ;


 int EINVAL ;



 int MAX77843_MUIC_ADC_GROUND ;
 int MAX77843_MUIC_ADC_OPEN ;
 int MAX77843_MUIC_ADC_RESERVED_ACC_3 ;
 void* MAX77843_MUIC_CHG_DOCK ;
 void* MAX77843_MUIC_CHG_GND ;
 int MAX77843_MUIC_CHG_NONE ;
 int MAX77843_MUIC_GND_USB_HOST ;
 size_t MAX77843_MUIC_STATUS1 ;
 int MAX77843_MUIC_STATUS1_ADC1K_MASK ;
 int MAX77843_MUIC_STATUS1_ADC_MASK ;
 int MAX77843_MUIC_STATUS1_ADC_SHIFT ;
 size_t MAX77843_MUIC_STATUS2 ;
 int MAX77843_MUIC_STATUS2_CHGTYP_MASK ;
 int MAX77843_MUIC_STATUS2_VBVOLT_MASK ;
 int MAX77843_MUIC_STATUS2_VBVOLT_SHIFT ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int max77843_muic_get_cable_type(struct max77843_muic_info *info,
  enum max77843_muic_cable_group group, bool *attached)
{
 int adc, chg_type, cable_type, gnd_type;

 adc = info->status[MAX77843_MUIC_STATUS1] &
   MAX77843_MUIC_STATUS1_ADC_MASK;
 adc >>= MAX77843_MUIC_STATUS1_ADC_SHIFT;

 switch (group) {
 case 130:
  if (adc == MAX77843_MUIC_ADC_OPEN) {
   *attached = 0;
   cable_type = info->prev_cable_type;
   info->prev_cable_type = MAX77843_MUIC_ADC_OPEN;
  } else {
   *attached = 1;
   cable_type = info->prev_cable_type = adc;
  }
  break;
 case 128:
  chg_type = info->status[MAX77843_MUIC_STATUS2] &
    MAX77843_MUIC_STATUS2_CHGTYP_MASK;


  if (adc == MAX77843_MUIC_ADC_GROUND) {
   if (chg_type == MAX77843_MUIC_CHG_NONE) {





    *attached = 0;
    cable_type = info->prev_chg_type;
    info->prev_chg_type = MAX77843_MUIC_CHG_NONE;
   } else {





    *attached = 1;
    cable_type = MAX77843_MUIC_CHG_GND;
    info->prev_chg_type = MAX77843_MUIC_CHG_GND;
   }
   break;
  }

  if (adc == MAX77843_MUIC_ADC_RESERVED_ACC_3) {
   if (chg_type == MAX77843_MUIC_CHG_NONE) {
    *attached = 0;
    cable_type = info->prev_chg_type;
    info->prev_chg_type = MAX77843_MUIC_CHG_NONE;
   } else {
    *attached = 1;
    cable_type = MAX77843_MUIC_CHG_DOCK;
    info->prev_chg_type = MAX77843_MUIC_CHG_DOCK;
   }
   break;
  }

  if (chg_type == MAX77843_MUIC_CHG_NONE) {
   *attached = 0;
   cable_type = info->prev_chg_type;
   info->prev_chg_type = MAX77843_MUIC_CHG_NONE;
  } else {
   *attached = 1;
   cable_type = info->prev_chg_type = chg_type;
  }
  break;
 case 129:
  if (adc == MAX77843_MUIC_ADC_OPEN) {
   *attached = 0;
   cable_type = info->prev_gnd_type;
   info->prev_gnd_type = MAX77843_MUIC_ADC_OPEN;
  } else {
   *attached = 1;
   gnd_type = (info->status[MAX77843_MUIC_STATUS1] &
     MAX77843_MUIC_STATUS1_ADC1K_MASK);


   gnd_type |= (info->status[MAX77843_MUIC_STATUS2] &
     MAX77843_MUIC_STATUS2_VBVOLT_MASK);
   gnd_type >>= MAX77843_MUIC_STATUS2_VBVOLT_SHIFT;


   gnd_type |= MAX77843_MUIC_GND_USB_HOST;
   cable_type = info->prev_gnd_type = gnd_type;
  }
  break;
 default:
  dev_err(info->dev, "Unknown cable group (%d)\n", group);
  cable_type = -EINVAL;
  break;
 }

 return cable_type;
}
