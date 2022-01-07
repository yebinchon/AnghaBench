
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct synquacer_i2c {int state; int pclkrate; int dev; TYPE_1__* msg; int msg_idx; int msg_ptr; scalar_t__ base; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int flags; unsigned char* buf; int len; } ;


 int EAGAIN ;
 int I2C_M_RD ;
 int IRQ_HANDLED ;



 unsigned char SYNQUACER_I2C_BCR_ACK ;
 unsigned char SYNQUACER_I2C_BCR_BEIE ;
 unsigned char SYNQUACER_I2C_BCR_BER ;
 unsigned char SYNQUACER_I2C_BCR_INTE ;
 unsigned char SYNQUACER_I2C_BCR_MSS ;
 unsigned char SYNQUACER_I2C_BSR_AL ;
 unsigned char SYNQUACER_I2C_BSR_FBT ;
 unsigned char SYNQUACER_I2C_BSR_LRB ;
 scalar_t__ SYNQUACER_I2C_REG_BCR ;
 scalar_t__ SYNQUACER_I2C_REG_BSR ;
 scalar_t__ SYNQUACER_I2C_REG_DAR ;
 int WAIT_PCLK (int,int ) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,...) ;
 int is_lastmsg (struct synquacer_i2c*) ;
 int is_msgend (struct synquacer_i2c*) ;
 int is_msglast (struct synquacer_i2c*) ;
 unsigned char readb (scalar_t__) ;
 int synquacer_i2c_master_start (struct synquacer_i2c*,TYPE_1__*) ;
 int synquacer_i2c_stop (struct synquacer_i2c*,int ) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static irqreturn_t synquacer_i2c_isr(int irq, void *dev_id)
{
 struct synquacer_i2c *i2c = dev_id;

 unsigned char byte;
 unsigned char bsr, bcr;
 int ret;

 bcr = readb(i2c->base + SYNQUACER_I2C_REG_BCR);
 bsr = readb(i2c->base + SYNQUACER_I2C_REG_BSR);
 dev_dbg(i2c->dev, "bsr:0x%02x, bcr:0x%02x\n", bsr, bcr);

 if (bcr & SYNQUACER_I2C_BCR_BER) {
  dev_err(i2c->dev, "bus error\n");
  synquacer_i2c_stop(i2c, -EAGAIN);
  goto out;
 }
 if ((bsr & SYNQUACER_I2C_BSR_AL) ||
     !(bcr & SYNQUACER_I2C_BCR_MSS)) {
  dev_dbg(i2c->dev, "arbitration lost\n");
  synquacer_i2c_stop(i2c, -EAGAIN);
  goto out;
 }

 switch (i2c->state) {
 case 129:
  if (bsr & SYNQUACER_I2C_BSR_LRB) {
   dev_dbg(i2c->dev, "ack was not received\n");
   synquacer_i2c_stop(i2c, -EAGAIN);
   goto out;
  }

  if (i2c->msg->flags & I2C_M_RD)
   i2c->state = 130;
  else
   i2c->state = 128;

  if (is_lastmsg(i2c) && i2c->msg->len == 0) {
   synquacer_i2c_stop(i2c, 0);
   goto out;
  }

  if (i2c->state == 130)
   goto prepare_read;



 case 128:
  if (bsr & SYNQUACER_I2C_BSR_LRB) {
   dev_dbg(i2c->dev, "WRITE: No Ack\n");
   synquacer_i2c_stop(i2c, -EAGAIN);
   goto out;
  }

  if (!is_msgend(i2c)) {
   writeb(i2c->msg->buf[i2c->msg_ptr++],
          i2c->base + SYNQUACER_I2C_REG_DAR);


   writeb(SYNQUACER_I2C_BCR_BEIE |
          SYNQUACER_I2C_BCR_MSS |
          SYNQUACER_I2C_BCR_INTE,
          i2c->base + SYNQUACER_I2C_REG_BCR);
   break;
  }
  if (is_lastmsg(i2c)) {
   synquacer_i2c_stop(i2c, 0);
   break;
  }
  dev_dbg(i2c->dev, "WRITE: Next Message\n");

  i2c->msg_ptr = 0;
  i2c->msg_idx++;
  i2c->msg++;


  ret = synquacer_i2c_master_start(i2c, i2c->msg);
  if (ret < 0) {
   dev_dbg(i2c->dev, "restart error (%d)\n", ret);
   synquacer_i2c_stop(i2c, -EAGAIN);
   break;
  }
  i2c->state = 129;
  break;

 case 130:
  byte = readb(i2c->base + SYNQUACER_I2C_REG_DAR);
  if (!(bsr & SYNQUACER_I2C_BSR_FBT))
   i2c->msg->buf[i2c->msg_ptr++] = byte;
  else
   dev_dbg(i2c->dev, "address:0x%02x. ignore it.\n", byte);

prepare_read:
  if (is_msglast(i2c)) {
   writeb(SYNQUACER_I2C_BCR_MSS |
          SYNQUACER_I2C_BCR_BEIE |
          SYNQUACER_I2C_BCR_INTE,
          i2c->base + SYNQUACER_I2C_REG_BCR);
   break;
  }
  if (!is_msgend(i2c)) {
   writeb(SYNQUACER_I2C_BCR_MSS |
          SYNQUACER_I2C_BCR_BEIE |
          SYNQUACER_I2C_BCR_INTE |
          SYNQUACER_I2C_BCR_ACK,
          i2c->base + SYNQUACER_I2C_REG_BCR);
   break;
  }
  if (is_lastmsg(i2c)) {

   dev_dbg(i2c->dev, "READ: Send Stop\n");
   synquacer_i2c_stop(i2c, 0);
   break;
  }
  dev_dbg(i2c->dev, "READ: Next Transfer\n");

  i2c->msg_ptr = 0;
  i2c->msg_idx++;
  i2c->msg++;

  ret = synquacer_i2c_master_start(i2c, i2c->msg);
  if (ret < 0) {
   dev_dbg(i2c->dev, "restart error (%d)\n", ret);
   synquacer_i2c_stop(i2c, -EAGAIN);
  } else {
   i2c->state = 129;
  }
  break;
 default:
  dev_err(i2c->dev, "called in err STATE (%d)\n", i2c->state);
  break;
 }

out:
 WAIT_PCLK(10, i2c->pclkrate);
 return IRQ_HANDLED;
}
