
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extcon_dev {struct extcon_cable* cables; } ;
struct extcon_cable {int disp_propval; int jack_propval; int chg_propval; int usb_propval; } ;
struct TYPE_2__ {unsigned int type; } ;


 unsigned int EXTCON_TYPE_CHG ;
 unsigned int EXTCON_TYPE_DISP ;
 unsigned int EXTCON_TYPE_JACK ;
 unsigned int EXTCON_TYPE_USB ;
 TYPE_1__* extcon_info ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void init_property(struct extcon_dev *edev, unsigned int id, int index)
{
 unsigned int type = extcon_info[id].type;
 struct extcon_cable *cable = &edev->cables[index];

 if (EXTCON_TYPE_USB & type)
  memset(cable->usb_propval, 0, sizeof(cable->usb_propval));
 if (EXTCON_TYPE_CHG & type)
  memset(cable->chg_propval, 0, sizeof(cable->chg_propval));
 if (EXTCON_TYPE_JACK & type)
  memset(cable->jack_propval, 0, sizeof(cable->jack_propval));
 if (EXTCON_TYPE_DISP & type)
  memset(cable->disp_propval, 0, sizeof(cable->disp_propval));
}
