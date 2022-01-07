
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_keyscan {int debounce_us; int n_cols; int n_rows; TYPE_2__* input_dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dev_dbg (struct device*,char*,int ,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int matrix_keypad_parse_properties (struct device*,int *,int *) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int keypad_matrix_key_parse_dt(struct st_keyscan *keypad_data)
{
 struct device *dev = keypad_data->input_dev->dev.parent;
 struct device_node *np = dev->of_node;
 int error;

 error = matrix_keypad_parse_properties(dev, &keypad_data->n_rows,
            &keypad_data->n_cols);
 if (error) {
  dev_err(dev, "failed to parse keypad params\n");
  return error;
 }

 of_property_read_u32(np, "st,debounce-us", &keypad_data->debounce_us);

 dev_dbg(dev, "n_rows=%d n_col=%d debounce=%d\n",
  keypad_data->n_rows, keypad_data->n_cols,
  keypad_data->debounce_us);

 return 0;
}
