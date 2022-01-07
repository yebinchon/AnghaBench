
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ak8975_data {int cntl_cache; TYPE_1__* def; int client; } ;
typedef enum ak_ctrl_mode { ____Placeholder_ak_ctrl_mode } ak_ctrl_mode ;
struct TYPE_2__ {int* ctrl_masks; int* ctrl_modes; int * ctrl_regs; } ;


 size_t CNTL ;
 size_t CNTL_MODE ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ak8975_set_mode(struct ak8975_data *data, enum ak_ctrl_mode mode)
{
 u8 regval;
 int ret;

 regval = (data->cntl_cache & ~data->def->ctrl_masks[CNTL_MODE]) |
   data->def->ctrl_modes[mode];
 ret = i2c_smbus_write_byte_data(data->client,
     data->def->ctrl_regs[CNTL], regval);
 if (ret < 0) {
  return ret;
 }
 data->cntl_cache = regval;

 usleep_range(100, 500);

 return 0;
}
