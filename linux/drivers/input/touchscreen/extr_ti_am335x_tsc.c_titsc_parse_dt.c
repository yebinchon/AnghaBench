
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct titsc {int wires; int x_plate_resistance; int coordinate_readouts; int charge_delay; int config_inp; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int CHARGEDLY_OPENDLY ;
 int EINVAL ;
 int dev_warn (TYPE_1__*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_property_read_u32_array (struct device_node*,char*,int ,int ) ;

__attribute__((used)) static int titsc_parse_dt(struct platform_device *pdev,
     struct titsc *ts_dev)
{
 struct device_node *node = pdev->dev.of_node;
 int err;

 if (!node)
  return -EINVAL;

 err = of_property_read_u32(node, "ti,wires", &ts_dev->wires);
 if (err < 0)
  return err;
 switch (ts_dev->wires) {
 case 4:
 case 5:
 case 8:
  break;
 default:
  return -EINVAL;
 }

 err = of_property_read_u32(node, "ti,x-plate-resistance",
   &ts_dev->x_plate_resistance);
 if (err < 0)
  return err;





 err = of_property_read_u32(node, "ti,coordinate-readouts",
   &ts_dev->coordinate_readouts);
 if (err < 0) {
  dev_warn(&pdev->dev, "please use 'ti,coordinate-readouts' instead\n");
  err = of_property_read_u32(node, "ti,coordiante-readouts",
    &ts_dev->coordinate_readouts);
 }

 if (err < 0)
  return err;

 if (ts_dev->coordinate_readouts <= 0) {
  dev_warn(&pdev->dev,
    "invalid co-ordinate readouts, resetting it to 5\n");
  ts_dev->coordinate_readouts = 5;
 }

 err = of_property_read_u32(node, "ti,charge-delay",
       &ts_dev->charge_delay);




 if (err < 0) {
  ts_dev->charge_delay = CHARGEDLY_OPENDLY;
  dev_warn(&pdev->dev, "ti,charge-delay not specified\n");
 }

 return of_property_read_u32_array(node, "ti,wire-config",
   ts_dev->config_inp, ARRAY_SIZE(ts_dev->config_inp));
}
