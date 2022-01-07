
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mv64xxx_i2c_data {int num_msgs; int waitq; scalar_t__ block; scalar_t__ reg_base; TYPE_1__* msgs; int rc; } ;
struct TYPE_2__ {int flags; } ;


 int EIO ;
 int I2C_M_RD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MV64XXX_I2C_BRIDGE_STATUS_ERROR ;
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_CONTROL ;
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE ;
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_STATUS ;
 int mv64xxx_i2c_read_offload_rx_data (struct mv64xxx_i2c_data*,TYPE_1__*) ;
 int readl (scalar_t__) ;
 int wake_up (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
mv64xxx_i2c_intr_offload(struct mv64xxx_i2c_data *drv_data)
{
 u32 cause, status;

 cause = readl(drv_data->reg_base +
        MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE);
 if (!cause)
  return IRQ_NONE;

 status = readl(drv_data->reg_base +
         MV64XXX_I2C_REG_BRIDGE_STATUS);

 if (status & MV64XXX_I2C_BRIDGE_STATUS_ERROR) {
  drv_data->rc = -EIO;
  goto out;
 }

 drv_data->rc = 0;





 if (drv_data->num_msgs == 1 && drv_data->msgs[0].flags & I2C_M_RD) {
  mv64xxx_i2c_read_offload_rx_data(drv_data, drv_data->msgs);
  drv_data->msgs++;
  drv_data->num_msgs--;
 }




 else if (drv_data->num_msgs == 2 &&
   !(drv_data->msgs[0].flags & I2C_M_RD) &&
   drv_data->msgs[1].flags & I2C_M_RD) {
  mv64xxx_i2c_read_offload_rx_data(drv_data, drv_data->msgs + 1);
  drv_data->msgs += 2;
  drv_data->num_msgs -= 2;
 }

out:
 writel(0, drv_data->reg_base + MV64XXX_I2C_REG_BRIDGE_CONTROL);
 writel(0, drv_data->reg_base +
        MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE);
 drv_data->block = 0;

 wake_up(&drv_data->waitq);

 return IRQ_HANDLED;
}
