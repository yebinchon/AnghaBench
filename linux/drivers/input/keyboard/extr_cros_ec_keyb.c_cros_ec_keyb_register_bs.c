
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ec_response_get_next_data {int switches; int buttons; } ;
typedef int u32 ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int version; scalar_t__ product; int bustype; } ;
struct input_dev {char* name; char const* phys; TYPE_2__ dev; TYPE_1__ id; int evbit; } ;
struct device {int dummy; } ;
struct cros_ec_keyb {struct input_dev* bs_idev; struct device* dev; struct cros_ec_device* ec; } ;
struct cros_ec_device {int phys_name; } ;
struct cros_ec_bs_map {scalar_t__ ev_type; int code; int bit; } ;


 int ARRAY_SIZE (struct cros_ec_bs_map*) ;
 int BIT (int ) ;
 int BUS_VIRTUAL ;
 int EC_MKBP_EVENT_BUTTON ;
 int EC_MKBP_EVENT_SWITCH ;
 int EC_MKBP_INFO_SUPPORTED ;
 int ENOMEM ;
 scalar_t__ EV_KEY ;
 int EV_REP ;
 scalar_t__ EV_SW ;
 int GFP_KERNEL ;
 int __set_bit (int ,int ) ;
 struct cros_ec_bs_map* cros_ec_keyb_bs ;
 int cros_ec_keyb_info (struct cros_ec_device*,int ,int ,union ec_response_get_next_data*,int) ;
 int cros_ec_keyb_query_switches (struct cros_ec_keyb*) ;
 int dev_err (struct device*,char*) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 char* devm_kasprintf (struct device*,int ,char*,int ) ;
 int get_unaligned_le32 (int *) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,scalar_t__,int ) ;
 int input_set_drvdata (struct input_dev*,struct cros_ec_keyb*) ;

__attribute__((used)) static int cros_ec_keyb_register_bs(struct cros_ec_keyb *ckdev)
{
 struct cros_ec_device *ec_dev = ckdev->ec;
 struct device *dev = ckdev->dev;
 struct input_dev *idev;
 union ec_response_get_next_data event_data = {};
 const char *phys;
 u32 buttons;
 u32 switches;
 int ret;
 int i;

 ret = cros_ec_keyb_info(ec_dev, EC_MKBP_INFO_SUPPORTED,
    EC_MKBP_EVENT_BUTTON, &event_data,
    sizeof(event_data.buttons));
 if (ret)
  return ret;
 buttons = get_unaligned_le32(&event_data.buttons);

 ret = cros_ec_keyb_info(ec_dev, EC_MKBP_INFO_SUPPORTED,
    EC_MKBP_EVENT_SWITCH, &event_data,
    sizeof(event_data.switches));
 if (ret)
  return ret;
 switches = get_unaligned_le32(&event_data.switches);

 if (!buttons && !switches)
  return 0;






 phys = devm_kasprintf(dev, GFP_KERNEL, "%s/input1", ec_dev->phys_name);
 if (!phys)
  return -ENOMEM;

 idev = devm_input_allocate_device(dev);
 if (!idev)
  return -ENOMEM;

 idev->name = "cros_ec_buttons";
 idev->phys = phys;
 __set_bit(EV_REP, idev->evbit);

 idev->id.bustype = BUS_VIRTUAL;
 idev->id.version = 1;
 idev->id.product = 0;
 idev->dev.parent = dev;

 input_set_drvdata(idev, ckdev);
 ckdev->bs_idev = idev;

 for (i = 0; i < ARRAY_SIZE(cros_ec_keyb_bs); i++) {
  const struct cros_ec_bs_map *map = &cros_ec_keyb_bs[i];

  if ((map->ev_type == EV_KEY && (buttons & BIT(map->bit))) ||
      (map->ev_type == EV_SW && (switches & BIT(map->bit))))
   input_set_capability(idev, map->ev_type, map->code);
 }

 ret = cros_ec_keyb_query_switches(ckdev);
 if (ret) {
  dev_err(dev, "cannot query switches\n");
  return ret;
 }

 ret = input_register_device(ckdev->bs_idev);
 if (ret) {
  dev_err(dev, "cannot register input device\n");
  return ret;
 }

 return 0;
}
