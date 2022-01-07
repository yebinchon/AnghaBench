
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ control; scalar_t__ data; } ;
struct TYPE_5__ {int dev; } ;
struct mv64xxx_i2c_data {int action; int num_msgs; int send_stop; int cntl_bits; int addr1; int addr2; int waitq; int block; TYPE_3__ reg_offsets; scalar_t__ reg_base; int rc; TYPE_2__ adapter; int errata_delay; int byte_posn; TYPE_1__* msg; int msgs; } ;
struct TYPE_4__ {int* buf; } ;


 int BUG_ON (int) ;
 int EIO ;
 int MV64XXX_I2C_REG_CONTROL_INTEN ;
 int MV64XXX_I2C_REG_CONTROL_STOP ;
 int dev_err (int *,char*,int) ;
 int mv64xxx_i2c_send_start (struct mv64xxx_i2c_data*) ;
 void* readl (scalar_t__) ;
 int udelay (int) ;
 int wake_up (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
mv64xxx_i2c_do_action(struct mv64xxx_i2c_data *drv_data)
{
 switch(drv_data->action) {
 case 129:

  BUG_ON(drv_data->num_msgs == 0);

  drv_data->msgs++;
  drv_data->num_msgs--;
  mv64xxx_i2c_send_start(drv_data);

  if (drv_data->errata_delay)
   udelay(5);






  drv_data->send_stop = drv_data->num_msgs == 1;
  break;

 case 136:
  writel(drv_data->cntl_bits,
   drv_data->reg_base + drv_data->reg_offsets.control);
  break;

 case 132:
  writel(drv_data->addr1,
   drv_data->reg_base + drv_data->reg_offsets.data);
  writel(drv_data->cntl_bits,
   drv_data->reg_base + drv_data->reg_offsets.control);
  break;

 case 131:
  writel(drv_data->addr2,
   drv_data->reg_base + drv_data->reg_offsets.data);
  writel(drv_data->cntl_bits,
   drv_data->reg_base + drv_data->reg_offsets.control);
  break;

 case 130:
  writel(drv_data->msg->buf[drv_data->byte_posn++],
   drv_data->reg_base + drv_data->reg_offsets.data);
  writel(drv_data->cntl_bits,
   drv_data->reg_base + drv_data->reg_offsets.control);
  break;

 case 134:
  drv_data->msg->buf[drv_data->byte_posn++] =
   readl(drv_data->reg_base + drv_data->reg_offsets.data);
  writel(drv_data->cntl_bits,
   drv_data->reg_base + drv_data->reg_offsets.control);
  break;

 case 133:
  drv_data->msg->buf[drv_data->byte_posn++] =
   readl(drv_data->reg_base + drv_data->reg_offsets.data);
  drv_data->cntl_bits &= ~MV64XXX_I2C_REG_CONTROL_INTEN;
  writel(drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_STOP,
   drv_data->reg_base + drv_data->reg_offsets.control);
  drv_data->block = 0;
  if (drv_data->errata_delay)
   udelay(5);

  wake_up(&drv_data->waitq);
  break;

 case 135:
 default:
  dev_err(&drv_data->adapter.dev,
   "mv64xxx_i2c_do_action: Invalid action: %d\n",
   drv_data->action);
  drv_data->rc = -EIO;


 case 128:
  drv_data->cntl_bits &= ~MV64XXX_I2C_REG_CONTROL_INTEN;
  writel(drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_STOP,
   drv_data->reg_base + drv_data->reg_offsets.control);
  drv_data->block = 0;
  wake_up(&drv_data->waitq);
  break;
 }
}
