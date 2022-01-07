
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmc150_accel_interrupt_info {int en_bitmask; int en_reg; int map_bitmask; int map_reg; } ;
struct bmc150_accel_interrupt {int users; struct bmc150_accel_interrupt_info* info; } ;
struct bmc150_accel_data {int regmap; struct bmc150_accel_interrupt* interrupts; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 int bmc150_accel_set_power_state (struct bmc150_accel_data*,int) ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int bmc150_accel_set_interrupt(struct bmc150_accel_data *data, int i,
          bool state)
{
 struct device *dev = regmap_get_device(data->regmap);
 struct bmc150_accel_interrupt *intr = &data->interrupts[i];
 const struct bmc150_accel_interrupt_info *info = intr->info;
 int ret;

 if (state) {
  if (atomic_inc_return(&intr->users) > 1)
   return 0;
 } else {
  if (atomic_dec_return(&intr->users) > 0)
   return 0;
 }
 ret = bmc150_accel_set_power_state(data, state);
 if (ret < 0)
  return ret;


 ret = regmap_update_bits(data->regmap, info->map_reg, info->map_bitmask,
     (state ? info->map_bitmask : 0));
 if (ret < 0) {
  dev_err(dev, "Error updating reg_int_map\n");
  goto out_fix_power_state;
 }


 ret = regmap_update_bits(data->regmap, info->en_reg, info->en_bitmask,
     (state ? info->en_bitmask : 0));
 if (ret < 0) {
  dev_err(dev, "Error updating reg_int_en\n");
  goto out_fix_power_state;
 }

 return 0;

out_fix_power_state:
 bmc150_accel_set_power_state(data, 0);
 return ret;
}
