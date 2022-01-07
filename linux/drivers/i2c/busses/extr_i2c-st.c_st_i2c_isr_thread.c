
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct st_i2c_client {int addr; int count; int result; int xfered; } ;
struct st_i2c_dev {scalar_t__ base; int dev; int complete; struct st_i2c_client client; } ;
typedef int irqreturn_t ;


 int EAGAIN ;
 int EIO ;
 int I2C_M_RD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SSC_CLR ;
 int SSC_CLR_NACK ;
 int SSC_CLR_SSCARBL ;
 scalar_t__ SSC_I2C ;
 int SSC_I2C_STOPG ;
 scalar_t__ SSC_IEN ;
 int SSC_IEN_ARBLEN ;
 int SSC_IEN_STOPEN ;
 scalar_t__ SSC_STA ;





 int __fls (int) ;
 int complete (int *) ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*,int,int) ;
 int readl (scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 int st_i2c_handle_read (struct st_i2c_dev*) ;
 int st_i2c_handle_write (struct st_i2c_dev*) ;
 int st_i2c_set_bits (scalar_t__,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t st_i2c_isr_thread(int irq, void *data)
{
 struct st_i2c_dev *i2c_dev = data;
 struct st_i2c_client *c = &i2c_dev->client;
 u32 sta, ien;
 int it;

 ien = readl_relaxed(i2c_dev->base + SSC_IEN);
 sta = readl_relaxed(i2c_dev->base + SSC_STA);


 it = __fls(sta & ien);
 if (it < 0) {
  dev_dbg(i2c_dev->dev, "spurious it (sta=0x%04x, ien=0x%04x)\n",
    sta, ien);
  return IRQ_NONE;
 }

 switch (1 << it) {
 case 128:
  if (c->addr & I2C_M_RD)
   st_i2c_handle_read(i2c_dev);
  else
   st_i2c_handle_write(i2c_dev);
  break;

 case 129:
 case 130:
  writel_relaxed(0, i2c_dev->base + SSC_IEN);
  complete(&i2c_dev->complete);
  break;

 case 131:
  writel_relaxed(SSC_CLR_NACK, i2c_dev->base + SSC_CLR);


  if ((c->addr & I2C_M_RD) && (c->count == 1) && (c->xfered)) {
   st_i2c_handle_read(i2c_dev);
   break;
  }

  it = SSC_IEN_STOPEN | SSC_IEN_ARBLEN;
  writel_relaxed(it, i2c_dev->base + SSC_IEN);

  st_i2c_set_bits(i2c_dev->base + SSC_I2C, SSC_I2C_STOPG);
  c->result = -EIO;
  break;

 case 132:
  writel_relaxed(SSC_CLR_SSCARBL, i2c_dev->base + SSC_CLR);

  it = SSC_IEN_STOPEN | SSC_IEN_ARBLEN;
  writel_relaxed(it, i2c_dev->base + SSC_IEN);

  st_i2c_set_bits(i2c_dev->base + SSC_I2C, SSC_I2C_STOPG);
  c->result = -EAGAIN;
  break;

 default:
  dev_err(i2c_dev->dev,
    "it %d unhandled (sta=0x%04x)\n", it, sta);
 }






 readl(i2c_dev->base + SSC_IEN);

 return IRQ_HANDLED;
}
