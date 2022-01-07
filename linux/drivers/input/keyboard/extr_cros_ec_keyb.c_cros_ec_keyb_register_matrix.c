
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int version; scalar_t__ product; int bustype; } ;
struct input_dev {char const* phys; TYPE_2__ dev; TYPE_1__ id; int evbit; int name; } ;
struct device {int of_node; } ;
struct cros_ec_keyb {struct input_dev* idev; int cols; int row_shift; int rows; int ghost_filter; void* old_kb_state; void* valid_keys; struct device* dev; struct cros_ec_device* ec; } ;
struct cros_ec_device {int phys_name; } ;


 int BUS_VIRTUAL ;
 int CROS_EC_DEV_NAME ;
 int ENOMEM ;
 int EV_MSC ;
 int EV_REP ;
 int GFP_KERNEL ;
 int MSC_SCAN ;
 int __set_bit (int ,int ) ;
 int cros_ec_keyb_compute_valid_keys (struct cros_ec_keyb*) ;
 int dev_err (struct device*,char*) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 char* devm_kasprintf (struct device*,int ,char*,int ) ;
 void* devm_kzalloc (struct device*,int ,int ) ;
 int get_count_order (int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct cros_ec_keyb*) ;
 int matrix_keypad_build_keymap (int *,int *,int ,int ,int *,struct input_dev*) ;
 int matrix_keypad_parse_properties (struct device*,int *,int *) ;
 int of_property_read_bool (int ,char*) ;

__attribute__((used)) static int cros_ec_keyb_register_matrix(struct cros_ec_keyb *ckdev)
{
 struct cros_ec_device *ec_dev = ckdev->ec;
 struct device *dev = ckdev->dev;
 struct input_dev *idev;
 const char *phys;
 int err;

 err = matrix_keypad_parse_properties(dev, &ckdev->rows, &ckdev->cols);
 if (err)
  return err;

 ckdev->valid_keys = devm_kzalloc(dev, ckdev->cols, GFP_KERNEL);
 if (!ckdev->valid_keys)
  return -ENOMEM;

 ckdev->old_kb_state = devm_kzalloc(dev, ckdev->cols, GFP_KERNEL);
 if (!ckdev->old_kb_state)
  return -ENOMEM;





 phys = devm_kasprintf(dev, GFP_KERNEL, "%s/input0", ec_dev->phys_name);
 if (!phys)
  return -ENOMEM;

 idev = devm_input_allocate_device(dev);
 if (!idev)
  return -ENOMEM;

 idev->name = CROS_EC_DEV_NAME;
 idev->phys = phys;
 __set_bit(EV_REP, idev->evbit);

 idev->id.bustype = BUS_VIRTUAL;
 idev->id.version = 1;
 idev->id.product = 0;
 idev->dev.parent = dev;

 ckdev->ghost_filter = of_property_read_bool(dev->of_node,
     "google,needs-ghost-filter");

 err = matrix_keypad_build_keymap(((void*)0), ((void*)0), ckdev->rows, ckdev->cols,
      ((void*)0), idev);
 if (err) {
  dev_err(dev, "cannot build key matrix\n");
  return err;
 }

 ckdev->row_shift = get_count_order(ckdev->cols);

 input_set_capability(idev, EV_MSC, MSC_SCAN);
 input_set_drvdata(idev, ckdev);
 ckdev->idev = idev;
 cros_ec_keyb_compute_valid_keys(ckdev);

 err = input_register_device(ckdev->idev);
 if (err) {
  dev_err(dev, "cannot register input device\n");
  return err;
 }

 return 0;
}
