
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct mrfld_extcon_data {int id; struct regmap* regmap; } ;


 char BCOVE_MAJOR (int ) ;
 int BCOVE_USBIDSTS ;
 unsigned int BCOVE_USBIDSTS_FLOAT ;
 unsigned int BCOVE_USBIDSTS_GND ;
 unsigned int BCOVE_USBIDSTS_RARBRC_MASK ;
 unsigned int BCOVE_USBIDSTS_RARBRC_SHIFT ;



 int INTEL_USB_ID_FLOAT ;
 int INTEL_USB_ID_GND ;
 int INTEL_USB_RID_A ;
 int INTEL_USB_RID_B ;
 int INTEL_USB_RID_C ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int mrfld_extcon_get_id(struct mrfld_extcon_data *data)
{
 struct regmap *regmap = data->regmap;
 unsigned int id;
 bool ground;
 int ret;

 ret = regmap_read(regmap, BCOVE_USBIDSTS, &id);
 if (ret)
  return ret;

 if (id & BCOVE_USBIDSTS_FLOAT)
  return INTEL_USB_ID_FLOAT;

 switch ((id & BCOVE_USBIDSTS_RARBRC_MASK) >> BCOVE_USBIDSTS_RARBRC_SHIFT) {
 case 130:
  return INTEL_USB_RID_A;
 case 129:
  return INTEL_USB_RID_B;
 case 128:
  return INTEL_USB_RID_C;
 }






 ground = id & BCOVE_USBIDSTS_GND;
 switch ('A' + BCOVE_MAJOR(data->id)) {
 case 'A':
  return ground ? INTEL_USB_ID_GND : INTEL_USB_ID_FLOAT;
 case 'B':
  return ground ? INTEL_USB_ID_FLOAT : INTEL_USB_ID_GND;
 }


 return INTEL_USB_ID_FLOAT;
}
