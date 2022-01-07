
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct device {struct device_node* of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct input_polled_dev {TYPE_3__* input; int poll_interval; int poll; struct clps711x_keypad_data* private; } ;
struct device_node {int dummy; } ;
struct clps711x_keypad_data {int row_count; int syscon; struct clps711x_gpio_data* gpio_data; int row_shift; } ;
struct clps711x_gpio_data {int desc; } ;
struct TYPE_6__ {int vendor; int product; int version; int bustype; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_7__ {int evbit; TYPE_2__ id; TYPE_1__ dev; int name; } ;


 int BUS_HOST ;
 int CLPS711X_KEYPAD_COL_COUNT ;
 int EINVAL ;
 int ENOMEM ;
 int EV_MSC ;
 int EV_REP ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 scalar_t__ IS_ERR (int ) ;
 int MSC_SCAN ;
 int PTR_ERR (int ) ;
 int SYSCON1_KBDSCAN (int) ;
 int SYSCON1_KBDSCAN_MASK ;
 int SYSCON_OFFSET ;
 int __set_bit (int ,int ) ;
 int clps711x_keypad_poll ;
 int devm_gpiod_get_index (struct device*,char*,int,int ) ;
 struct clps711x_gpio_data* devm_kcalloc (struct device*,int,int,int ) ;
 struct clps711x_keypad_data* devm_kzalloc (struct device*,int,int ) ;
 int get_count_order (int ) ;
 struct input_polled_dev* input_allocate_polled_device () ;
 int input_free_polled_device (struct input_polled_dev*) ;
 int input_register_polled_device (struct input_polled_dev*) ;
 int input_set_capability (TYPE_3__*,int ,int ) ;
 int matrix_keypad_build_keymap (int *,int *,int,int ,int *,TYPE_3__*) ;
 int of_gpio_named_count (struct device_node*,char*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct input_polled_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int clps711x_keypad_probe(struct platform_device *pdev)
{
 struct clps711x_keypad_data *priv;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct input_polled_dev *poll_dev;
 u32 poll_interval;
 int i, err;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->syscon =
  syscon_regmap_lookup_by_compatible("cirrus,ep7209-syscon1");
 if (IS_ERR(priv->syscon))
  return PTR_ERR(priv->syscon);

 priv->row_count = of_gpio_named_count(np, "row-gpios");
 if (priv->row_count < 1)
  return -EINVAL;

 priv->gpio_data = devm_kcalloc(dev,
    priv->row_count, sizeof(*priv->gpio_data),
    GFP_KERNEL);
 if (!priv->gpio_data)
  return -ENOMEM;

 priv->row_shift = get_count_order(CLPS711X_KEYPAD_COL_COUNT);

 for (i = 0; i < priv->row_count; i++) {
  struct clps711x_gpio_data *data = &priv->gpio_data[i];

  data->desc = devm_gpiod_get_index(dev, "row", i, GPIOD_IN);
  if (IS_ERR(data->desc))
   return PTR_ERR(data->desc);
 }

 err = of_property_read_u32(np, "poll-interval", &poll_interval);
 if (err)
  return err;

 poll_dev = input_allocate_polled_device();
 if (!poll_dev)
  return -ENOMEM;

 poll_dev->private = priv;
 poll_dev->poll = clps711x_keypad_poll;
 poll_dev->poll_interval = poll_interval;
 poll_dev->input->name = pdev->name;
 poll_dev->input->dev.parent = dev;
 poll_dev->input->id.bustype = BUS_HOST;
 poll_dev->input->id.vendor = 0x0001;
 poll_dev->input->id.product = 0x0001;
 poll_dev->input->id.version = 0x0100;

 err = matrix_keypad_build_keymap(((void*)0), ((void*)0), priv->row_count,
      CLPS711X_KEYPAD_COL_COUNT,
      ((void*)0), poll_dev->input);
 if (err)
  goto out_err;

 input_set_capability(poll_dev->input, EV_MSC, MSC_SCAN);
 if (of_property_read_bool(np, "autorepeat"))
  __set_bit(EV_REP, poll_dev->input->evbit);

 platform_set_drvdata(pdev, poll_dev);


 regmap_update_bits(priv->syscon, SYSCON_OFFSET, SYSCON1_KBDSCAN_MASK,
      SYSCON1_KBDSCAN(1));

 err = input_register_polled_device(poll_dev);
 if (err)
  goto out_err;

 return 0;

out_err:
 input_free_polled_device(poll_dev);
 return err;
}
