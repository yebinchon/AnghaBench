
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




 int get_extcon_type (unsigned int) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int is_extcon_property_capability(struct extcon_dev *edev,
    unsigned int id, int index,unsigned int prop)
{
 struct extcon_cable *cable;
 int type, ret;


 type = get_extcon_type(prop);
 if (type < 0)
  return type;

 cable = &edev->cables[index];

 switch (type) {
 case 128:
  ret = test_bit(prop - EXTCON_PROP_USB_MIN, cable->usb_bits);
  break;
 case 131:
  ret = test_bit(prop - EXTCON_PROP_CHG_MIN, cable->chg_bits);
  break;
 case 129:
  ret = test_bit(prop - EXTCON_PROP_JACK_MIN, cable->jack_bits);
  break;
 case 130:
  ret = test_bit(prop - EXTCON_PROP_DISP_MIN, cable->disp_bits);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
