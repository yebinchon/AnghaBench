
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxt_data {scalar_t__ multitouch; TYPE_1__* client; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,...) ;
 int mxt_debug_init (struct mxt_data*) ;
 int mxt_init_t7_power_cfg (struct mxt_data*) ;
 int mxt_initialize_input_device (struct mxt_data*) ;
 int mxt_update_cfg (struct mxt_data*,struct firmware const*) ;

__attribute__((used)) static int mxt_configure_objects(struct mxt_data *data,
     const struct firmware *cfg)
{
 struct device *dev = &data->client->dev;
 int error;

 error = mxt_init_t7_power_cfg(data);
 if (error) {
  dev_err(dev, "Failed to initialize power cfg\n");
  return error;
 }

 if (cfg) {
  error = mxt_update_cfg(data, cfg);
  if (error)
   dev_warn(dev, "Error %d updating config\n", error);
 }

 if (data->multitouch) {
  error = mxt_initialize_input_device(data);
  if (error)
   return error;
 } else {
  dev_warn(dev, "No touch object detected\n");
 }

 mxt_debug_init(data);

 return 0;
}
