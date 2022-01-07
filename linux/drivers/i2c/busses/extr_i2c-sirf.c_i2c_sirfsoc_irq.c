
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct sirfsoc_i2c {scalar_t__ finished_len; scalar_t__ msg_len; scalar_t__ base; int done; scalar_t__ msg_read; TYPE_1__ adapter; int err_status; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ SIRFSOC_I2C_CTRL ;
 int SIRFSOC_I2C_ERR_NOACK ;
 int SIRFSOC_I2C_RESET ;
 scalar_t__ SIRFSOC_I2C_STATUS ;
 int SIRFSOC_I2C_STAT_CMD_DONE ;
 int SIRFSOC_I2C_STAT_ERR ;
 int SIRFSOC_I2C_STAT_NACK ;
 int complete (int *) ;
 int cpu_relax () ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int i2c_sirfsoc_queue_cmd (struct sirfsoc_i2c*) ;
 int i2c_sirfsoc_read_data (struct sirfsoc_i2c*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t i2c_sirfsoc_irq(int irq, void *dev_id)
{
 struct sirfsoc_i2c *siic = (struct sirfsoc_i2c *)dev_id;
 u32 i2c_stat = readl(siic->base + SIRFSOC_I2C_STATUS);

 if (i2c_stat & SIRFSOC_I2C_STAT_ERR) {

  siic->err_status = SIRFSOC_I2C_ERR_NOACK;
  writel(SIRFSOC_I2C_STAT_ERR, siic->base + SIRFSOC_I2C_STATUS);

  if (i2c_stat & SIRFSOC_I2C_STAT_NACK)
   dev_dbg(&siic->adapter.dev, "ACK not received\n");
  else
   dev_err(&siic->adapter.dev, "I2C error\n");






  writel(readl(siic->base + SIRFSOC_I2C_CTRL) | SIRFSOC_I2C_RESET,
    siic->base + SIRFSOC_I2C_CTRL);
  while (readl(siic->base + SIRFSOC_I2C_CTRL) & SIRFSOC_I2C_RESET)
   cpu_relax();

  complete(&siic->done);
 } else if (i2c_stat & SIRFSOC_I2C_STAT_CMD_DONE) {

  if (siic->msg_read)
   i2c_sirfsoc_read_data(siic);
  if (siic->finished_len == siic->msg_len)
   complete(&siic->done);
  else
   i2c_sirfsoc_queue_cmd(siic);

  writel(SIRFSOC_I2C_STAT_CMD_DONE, siic->base + SIRFSOC_I2C_STATUS);
 }

 return IRQ_HANDLED;
}
