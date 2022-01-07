
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lpc32xx_kscan_drv {int scan_delay; int deb_clks; int row_shift; scalar_t__ matrix_sz; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int get_count_order (scalar_t__) ;
 int matrix_keypad_parse_properties (struct device*,scalar_t__*,scalar_t__*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int lpc32xx_parse_dt(struct device *dev,
          struct lpc32xx_kscan_drv *kscandat)
{
 struct device_node *np = dev->of_node;
 u32 rows = 0, columns = 0;
 int err;

 err = matrix_keypad_parse_properties(dev, &rows, &columns);
 if (err)
  return err;
 if (rows != columns) {
  dev_err(dev, "rows and columns must be equal!\n");
  return -EINVAL;
 }

 kscandat->matrix_sz = rows;
 kscandat->row_shift = get_count_order(columns);

 of_property_read_u32(np, "nxp,debounce-delay-ms", &kscandat->deb_clks);
 of_property_read_u32(np, "nxp,scan-delay-ms", &kscandat->scan_delay);
 if (!kscandat->deb_clks || !kscandat->scan_delay) {
  dev_err(dev, "debounce or scan delay not specified\n");
  return -EINVAL;
 }

 return 0;
}
