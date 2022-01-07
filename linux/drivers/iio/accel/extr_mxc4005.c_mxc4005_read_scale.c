
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mxc4005_data {int dev; int regmap; } ;
struct TYPE_3__ {int scale; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 unsigned int MXC4005_CONTROL_FSR_SHIFT ;
 int MXC4005_REG_CONTROL ;
 int dev_err (int ,char*) ;
 TYPE_1__* mxc4005_scale_table ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int mxc4005_read_scale(struct mxc4005_data *data)
{
 unsigned int reg;
 int ret;
 int i;

 ret = regmap_read(data->regmap, MXC4005_REG_CONTROL, &reg);
 if (ret < 0) {
  dev_err(data->dev, "failed to read reg_control\n");
  return ret;
 }

 i = reg >> MXC4005_CONTROL_FSR_SHIFT;

 if (i < 0 || i >= ARRAY_SIZE(mxc4005_scale_table))
  return -EINVAL;

 return mxc4005_scale_table[i].scale;
}
