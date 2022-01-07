
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lpc2k_i2c {size_t msg_idx; scalar_t__ base; int msg_status; int wait; int irq; TYPE_1__* msg; int is_last; } ;
struct TYPE_2__ {size_t len; unsigned char* buf; } ;


 int EAGAIN ;
 int EBUSY ;
 int EIO ;
 int ENXIO ;
 unsigned char LPC24XX_AA ;
 scalar_t__ LPC24XX_I2CONCLR ;
 scalar_t__ LPC24XX_I2CONSET ;
 scalar_t__ LPC24XX_I2DAT ;
 scalar_t__ LPC24XX_I2STAT ;
 unsigned char LPC24XX_SI ;
 unsigned char LPC24XX_STA ;
 unsigned char LPC24XX_STO ;
 unsigned char LPC24XX_STO_AA ;
 int disable_irq_nosync (int ) ;
 unsigned char i2c_8bit_addr_from_msg (TYPE_1__*) ;
 void* readl (scalar_t__) ;
 int wake_up (int *) ;
 int writel (unsigned char,scalar_t__) ;

__attribute__((used)) static void i2c_lpc2k_pump_msg(struct lpc2k_i2c *i2c)
{
 unsigned char data;
 u32 status;





 status = readl(i2c->base + LPC24XX_I2STAT);

 switch (status) {
 case 128:
 case 129:

  data = i2c_8bit_addr_from_msg(i2c->msg);

  writel(data, i2c->base + LPC24XX_I2DAT);
  writel(LPC24XX_STA, i2c->base + LPC24XX_I2CONCLR);
  break;

 case 134:
 case 132:




  if (i2c->msg_idx < i2c->msg->len) {
   writel(i2c->msg->buf[i2c->msg_idx],
          i2c->base + LPC24XX_I2DAT);
  } else if (i2c->is_last) {

   writel(LPC24XX_STO_AA, i2c->base + LPC24XX_I2CONSET);
   writel(LPC24XX_SI, i2c->base + LPC24XX_I2CONCLR);
   i2c->msg_status = 0;
   disable_irq_nosync(i2c->irq);
  } else {
   i2c->msg_status = 0;
   disable_irq_nosync(i2c->irq);
  }

  i2c->msg_idx++;
  break;

 case 138:

  if (i2c->msg->len == 1) {

   writel(LPC24XX_AA, i2c->base + LPC24XX_I2CONCLR);
  } else {

   writel(LPC24XX_AA, i2c->base + LPC24XX_I2CONSET);
  }

  writel(LPC24XX_STA, i2c->base + LPC24XX_I2CONCLR);
  break;

 case 135:





 case 136:

  if (i2c->msg_idx < i2c->msg->len) {
   i2c->msg->buf[i2c->msg_idx] =
     readl(i2c->base + LPC24XX_I2DAT);
  }


  if (i2c->msg_idx >= i2c->msg->len - 1 && i2c->is_last) {
   writel(LPC24XX_STO_AA, i2c->base + LPC24XX_I2CONSET);
   writel(LPC24XX_SI, i2c->base + LPC24XX_I2CONCLR);
   i2c->msg_status = 0;
  }


  if (i2c->msg_idx >= i2c->msg->len - 1) {
   i2c->msg_status = 0;
   disable_irq_nosync(i2c->irq);
  }





  if (i2c->msg_idx >= i2c->msg->len - 2) {

   writel(LPC24XX_AA, i2c->base + LPC24XX_I2CONCLR);
  } else {

   writel(LPC24XX_AA, i2c->base + LPC24XX_I2CONSET);
  }

  writel(LPC24XX_STA, i2c->base + LPC24XX_I2CONCLR);
  i2c->msg_idx++;
  break;

 case 133:
 case 131:
 case 137:

  writel(LPC24XX_STO_AA, i2c->base + LPC24XX_I2CONSET);
  i2c->msg_status = -ENXIO;
  disable_irq_nosync(i2c->irq);
  break;

 case 130:

  i2c->msg_status = -EAGAIN;


  writel(LPC24XX_STA | LPC24XX_STO, i2c->base + LPC24XX_I2CONCLR);
  disable_irq_nosync(i2c->irq);
  break;

 default:

  i2c->msg_status = -EIO;
  disable_irq_nosync(i2c->irq);
  break;
 }


 if (i2c->msg_status != -EBUSY)
  wake_up(&i2c->wait);





 if (i2c->msg_status != 0)
  writel(LPC24XX_SI, i2c->base + LPC24XX_I2CONCLR);
}
