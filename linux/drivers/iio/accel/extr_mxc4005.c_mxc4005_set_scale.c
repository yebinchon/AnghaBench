
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mxc4005_data {int dev; int regmap; } ;
struct TYPE_3__ {int scale; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int MXC4005_CONTROL_FSR_SHIFT ;
 int MXC4005_REG_CONTROL ;
 int MXC4005_REG_CONTROL_MASK_FSR ;
 int dev_err (int ,char*) ;
 TYPE_1__* mxc4005_scale_table ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int mxc4005_set_scale(struct mxc4005_data *data, int val)
{
 unsigned int reg;
 int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(mxc4005_scale_table); i++) {
  if (mxc4005_scale_table[i].scale == val) {
   reg = i << MXC4005_CONTROL_FSR_SHIFT;
   ret = regmap_update_bits(data->regmap,
       MXC4005_REG_CONTROL,
       MXC4005_REG_CONTROL_MASK_FSR,
       reg);
   if (ret < 0)
    dev_err(data->dev,
     "failed to write reg_control\n");
   return ret;
  }
 }

 return -EINVAL;
}
