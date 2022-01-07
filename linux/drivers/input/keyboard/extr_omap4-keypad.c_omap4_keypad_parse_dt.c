
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_keypad {int no_autorepeat; int cols; int rows; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int matrix_keypad_parse_properties (struct device*,int *,int *) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static int omap4_keypad_parse_dt(struct device *dev,
     struct omap4_keypad *keypad_data)
{
 struct device_node *np = dev->of_node;
 int err;

 err = matrix_keypad_parse_properties(dev, &keypad_data->rows,
          &keypad_data->cols);
 if (err)
  return err;

 if (of_get_property(np, "linux,input-no-autorepeat", ((void*)0)))
  keypad_data->no_autorepeat = 1;

 return 0;
}
