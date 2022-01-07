
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct si1133_data {int regmap; } ;


 int SI1133_CMD_PARAM_MASK ;
 int SI1133_CMD_PARAM_SET ;
 int SI1133_REG_HOSTIN0 ;
 int regmap_write (int ,int ,int ) ;
 int si1133_command (struct si1133_data*,int) ;

__attribute__((used)) static int si1133_param_set(struct si1133_data *data, u8 param, u32 value)
{
 int err = regmap_write(data->regmap, SI1133_REG_HOSTIN0, value);

 if (err)
  return err;

 return si1133_command(data, SI1133_CMD_PARAM_SET |
         (param & SI1133_CMD_PARAM_MASK));
}
