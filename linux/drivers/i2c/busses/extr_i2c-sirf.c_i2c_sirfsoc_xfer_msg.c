
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct sirfsoc_i2c {scalar_t__ err_status; scalar_t__ base; TYPE_1__ adapter; int done; } ;
struct i2c_msg {int len; } ;


 int EAGAIN ;
 int SIRFSOC_I2C_CMD_DONE_EN ;
 scalar_t__ SIRFSOC_I2C_CMD_START ;
 scalar_t__ SIRFSOC_I2C_CTRL ;
 int SIRFSOC_I2C_ERR_INT_EN ;
 scalar_t__ SIRFSOC_I2C_ERR_TIMEOUT ;
 int SIRFSOC_I2C_RESET ;
 int cpu_relax () ;
 int dev_err (int *,char*) ;
 int i2c_sirfsoc_queue_cmd (struct sirfsoc_i2c*) ;
 int i2c_sirfsoc_set_address (struct sirfsoc_i2c*,struct i2c_msg*) ;
 int msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ wait_for_completion_timeout (int *,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int i2c_sirfsoc_xfer_msg(struct sirfsoc_i2c *siic, struct i2c_msg *msg)
{
 u32 regval = readl(siic->base + SIRFSOC_I2C_CTRL);

 int timeout = msecs_to_jiffies((msg->len + 1) * 50);

 i2c_sirfsoc_set_address(siic, msg);

 writel(regval | SIRFSOC_I2C_CMD_DONE_EN | SIRFSOC_I2C_ERR_INT_EN,
  siic->base + SIRFSOC_I2C_CTRL);
 i2c_sirfsoc_queue_cmd(siic);

 if (wait_for_completion_timeout(&siic->done, timeout) == 0) {
  siic->err_status = SIRFSOC_I2C_ERR_TIMEOUT;
  dev_err(&siic->adapter.dev, "Transfer timeout\n");
 }

 writel(regval & ~(SIRFSOC_I2C_CMD_DONE_EN | SIRFSOC_I2C_ERR_INT_EN),
  siic->base + SIRFSOC_I2C_CTRL);
 writel(0, siic->base + SIRFSOC_I2C_CMD_START);


 if (siic->err_status == SIRFSOC_I2C_ERR_TIMEOUT) {
  writel(readl(siic->base + SIRFSOC_I2C_CTRL) | SIRFSOC_I2C_RESET,
   siic->base + SIRFSOC_I2C_CTRL);
  while (readl(siic->base + SIRFSOC_I2C_CTRL) & SIRFSOC_I2C_RESET)
   cpu_relax();
 }
 return siic->err_status ? -EAGAIN : 0;
}
