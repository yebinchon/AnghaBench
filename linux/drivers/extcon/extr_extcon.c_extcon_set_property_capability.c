
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {struct extcon_cable* cables; } ;
struct extcon_cable {int disp_bits; int jack_bits; int chg_bits; int usb_bits; } ;


 int EINVAL ;
 int EXTCON_PROP_CHG_MIN ;
 int EXTCON_PROP_DISP_MIN ;
 int EXTCON_PROP_JACK_MIN ;
 int EXTCON_PROP_USB_MIN ;




 int __set_bit (int ,int ) ;
 int find_cable_index_by_id (struct extcon_dev*,unsigned int) ;
 int get_extcon_type (unsigned int) ;
 int is_extcon_property_supported (unsigned int,unsigned int) ;

int extcon_set_property_capability(struct extcon_dev *edev, unsigned int id,
     unsigned int prop)
{
 struct extcon_cable *cable;
 int index, type, ret = 0;

 if (!edev)
  return -EINVAL;


 if (!is_extcon_property_supported(id, prop))
  return -EINVAL;


 index = find_cable_index_by_id(edev, id);
 if (index < 0)
  return index;

 type = get_extcon_type(prop);
 if (type < 0)
  return type;

 cable = &edev->cables[index];

 switch (type) {
 case 128:
  __set_bit(prop - EXTCON_PROP_USB_MIN, cable->usb_bits);
  break;
 case 131:
  __set_bit(prop - EXTCON_PROP_CHG_MIN, cable->chg_bits);
  break;
 case 129:
  __set_bit(prop - EXTCON_PROP_JACK_MIN, cable->jack_bits);
  break;
 case 130:
  __set_bit(prop - EXTCON_PROP_DISP_MIN, cable->disp_bits);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
