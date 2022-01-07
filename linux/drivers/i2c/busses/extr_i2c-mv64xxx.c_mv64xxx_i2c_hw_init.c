
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ control; scalar_t__ ext_addr; scalar_t__ addr; scalar_t__ clock; scalar_t__ soft_reset; } ;
struct mv64xxx_i2c_data {int state; TYPE_1__ reg_offsets; scalar_t__ reg_base; int freq_n; int freq_m; scalar_t__ offload_enabled; } ;


 int MV64XXX_I2C_BAUD_DIV_M (int ) ;
 int MV64XXX_I2C_BAUD_DIV_N (int ) ;
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_CONTROL ;
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE ;
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_INTR_MASK ;
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_TIMING ;
 int MV64XXX_I2C_REG_CONTROL_STOP ;
 int MV64XXX_I2C_REG_CONTROL_TWSIEN ;
 int MV64XXX_I2C_STATE_IDLE ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
mv64xxx_i2c_hw_init(struct mv64xxx_i2c_data *drv_data)
{
 if (drv_data->offload_enabled) {
  writel(0, drv_data->reg_base + MV64XXX_I2C_REG_BRIDGE_CONTROL);
  writel(0, drv_data->reg_base + MV64XXX_I2C_REG_BRIDGE_TIMING);
  writel(0, drv_data->reg_base +
   MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE);
  writel(0, drv_data->reg_base +
   MV64XXX_I2C_REG_BRIDGE_INTR_MASK);
 }

 writel(0, drv_data->reg_base + drv_data->reg_offsets.soft_reset);
 writel(MV64XXX_I2C_BAUD_DIV_M(drv_data->freq_m) | MV64XXX_I2C_BAUD_DIV_N(drv_data->freq_n),
  drv_data->reg_base + drv_data->reg_offsets.clock);
 writel(0, drv_data->reg_base + drv_data->reg_offsets.addr);
 writel(0, drv_data->reg_base + drv_data->reg_offsets.ext_addr);
 writel(MV64XXX_I2C_REG_CONTROL_TWSIEN | MV64XXX_I2C_REG_CONTROL_STOP,
  drv_data->reg_base + drv_data->reg_offsets.control);
 drv_data->state = MV64XXX_I2C_STATE_IDLE;
}
