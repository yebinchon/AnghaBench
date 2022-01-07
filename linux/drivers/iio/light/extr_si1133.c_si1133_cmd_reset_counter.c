
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si1133_data {scalar_t__ rsp_seq; int regmap; } ;


 int SI1133_CMD_RESET_CTR ;
 int SI1133_REG_COMMAND ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int si1133_cmd_reset_counter(struct si1133_data *data)
{
 int err = regmap_write(data->regmap, SI1133_REG_COMMAND,
          SI1133_CMD_RESET_CTR);
 if (err)
  return err;

 data->rsp_seq = 0;

 return 0;
}
