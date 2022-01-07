
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ len; int * buf; } ;
struct img_i2c {int int_enable; TYPE_1__ msg; } ;


 int FIFO_WRITE_FULL ;
 int INT_FIFO_EMPTYING ;
 int SCB_FIFO_STATUS_REG ;
 int SCB_WRITE_DATA_REG ;
 int img_i2c_readl (struct img_i2c*,int ) ;
 int img_i2c_wr_rd_fence (struct img_i2c*) ;
 int img_i2c_writel (struct img_i2c*,int ,int ) ;

__attribute__((used)) static void img_i2c_write_fifo(struct img_i2c *i2c)
{
 while (i2c->msg.len) {
  u32 fifo_status;

  img_i2c_wr_rd_fence(i2c);
  fifo_status = img_i2c_readl(i2c, SCB_FIFO_STATUS_REG);
  if (fifo_status & FIFO_WRITE_FULL)
   break;

  img_i2c_writel(i2c, SCB_WRITE_DATA_REG, *i2c->msg.buf);
  i2c->msg.len--;
  i2c->msg.buf++;
 }


 if (!i2c->msg.len)
  i2c->int_enable &= ~INT_FIFO_EMPTYING;
}
