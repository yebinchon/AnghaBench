
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sirfsoc_i2c {int finished_len; int msg_len; int cmd_ptr; int read_cmd_len; int* buf; scalar_t__ base; scalar_t__ last; scalar_t__ msg_read; } ;


 scalar_t__ SIRFSOC_I2C_CMD (int ) ;
 int SIRFSOC_I2C_CMD_BUF_MAX ;
 int SIRFSOC_I2C_CMD_RP (int ) ;
 scalar_t__ SIRFSOC_I2C_CMD_START ;
 int SIRFSOC_I2C_NACK ;
 int SIRFSOC_I2C_READ ;
 int SIRFSOC_I2C_START_CMD ;
 int SIRFSOC_I2C_STOP ;
 int SIRFSOC_I2C_WRITE ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void i2c_sirfsoc_queue_cmd(struct sirfsoc_i2c *siic)
{
 u32 regval;
 int i = 0;

 if (siic->msg_read) {
  while (((siic->finished_len + i) < siic->msg_len)
    && (siic->cmd_ptr < SIRFSOC_I2C_CMD_BUF_MAX)) {
   regval = SIRFSOC_I2C_READ | SIRFSOC_I2C_CMD_RP(0);
   if (((siic->finished_len + i) ==
     (siic->msg_len - 1)) && siic->last)
    regval |= SIRFSOC_I2C_STOP | SIRFSOC_I2C_NACK;
   writel(regval,
    siic->base + SIRFSOC_I2C_CMD(siic->cmd_ptr++));
   i++;
  }

  siic->read_cmd_len = i;
 } else {
  while ((siic->cmd_ptr < SIRFSOC_I2C_CMD_BUF_MAX - 1)
    && (siic->finished_len < siic->msg_len)) {
   regval = SIRFSOC_I2C_WRITE | SIRFSOC_I2C_CMD_RP(0);
   if ((siic->finished_len == (siic->msg_len - 1))
    && siic->last)
    regval |= SIRFSOC_I2C_STOP;
   writel(regval,
    siic->base + SIRFSOC_I2C_CMD(siic->cmd_ptr++));
   writel(siic->buf[siic->finished_len++],
    siic->base + SIRFSOC_I2C_CMD(siic->cmd_ptr++));
  }
 }
 siic->cmd_ptr = 0;


 writel(SIRFSOC_I2C_START_CMD, siic->base + SIRFSOC_I2C_CMD_START);
}
