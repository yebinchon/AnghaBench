
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int product; int vendor; int bustype; } ;
struct input_dev {char* name; int propbit; TYPE_2__ id; } ;
struct elan_tp_data {struct input_dev* tp_input; int product_id; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BUS_I2C ;
 int ELAN_VENDOR_ID ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_REL ;
 int INPUT_PROP_POINTER ;
 int INPUT_PROP_POINTING_STICK ;
 int REL_X ;
 int REL_Y ;
 int __set_bit (int ,int ) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct elan_tp_data*) ;

__attribute__((used)) static int elan_setup_trackpoint_input_device(struct elan_tp_data *data)
{
 struct device *dev = &data->client->dev;
 struct input_dev *input;

 input = devm_input_allocate_device(dev);
 if (!input)
  return -ENOMEM;

 input->name = "Elan TrackPoint";
 input->id.bustype = BUS_I2C;
 input->id.vendor = ELAN_VENDOR_ID;
 input->id.product = data->product_id;
 input_set_drvdata(input, data);

 input_set_capability(input, EV_REL, REL_X);
 input_set_capability(input, EV_REL, REL_Y);
 input_set_capability(input, EV_KEY, BTN_LEFT);
 input_set_capability(input, EV_KEY, BTN_RIGHT);
 input_set_capability(input, EV_KEY, BTN_MIDDLE);

 __set_bit(INPUT_PROP_POINTER, input->propbit);
 __set_bit(INPUT_PROP_POINTING_STICK, input->propbit);

 data->tp_input = input;

 return 0;
}
