
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_2__ {void** buf; scalar_t__ len; } ;
struct img_i2c {TYPE_1__ msg; } ;


 int FIFO_READ_EMPTY ;
 int SCB_FIFO_STATUS_REG ;
 int SCB_READ_DATA_REG ;
 int SCB_READ_FIFO_REG ;
 void* img_i2c_readl (struct img_i2c*,int ) ;
 int img_i2c_wr_rd_fence (struct img_i2c*) ;
 int img_i2c_writel (struct img_i2c*,int ,int) ;

__attribute__((used)) static void img_i2c_read_fifo(struct img_i2c *i2c)
{
 while (i2c->msg.len) {
  u32 fifo_status;
  u8 data;

  img_i2c_wr_rd_fence(i2c);
  fifo_status = img_i2c_readl(i2c, SCB_FIFO_STATUS_REG);
  if (fifo_status & FIFO_READ_EMPTY)
   break;

  data = img_i2c_readl(i2c, SCB_READ_DATA_REG);
  *i2c->msg.buf = data;

  img_i2c_writel(i2c, SCB_READ_FIFO_REG, 0xff);
  i2c->msg.len--;
  i2c->msg.buf++;
 }
}
