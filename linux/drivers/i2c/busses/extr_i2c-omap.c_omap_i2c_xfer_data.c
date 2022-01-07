
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct omap_i2c_dev {int buf_len; int errata; int threshold; int dev; scalar_t__ fifo_size; scalar_t__ receiver; } ;


 int EAGAIN ;
 int I2C_OMAP_ERRATA_I207 ;
 int OMAP_I2C_BUFSTAT_REG ;
 int OMAP_I2C_IE_REG ;
 int OMAP_I2C_STAT_AL ;
 int OMAP_I2C_STAT_ARDY ;
 int OMAP_I2C_STAT_NACK ;
 int OMAP_I2C_STAT_RDR ;
 int OMAP_I2C_STAT_REG ;
 int OMAP_I2C_STAT_ROVR ;
 int OMAP_I2C_STAT_RRDY ;
 int OMAP_I2C_STAT_XDR ;
 int OMAP_I2C_STAT_XRDY ;
 int OMAP_I2C_STAT_XUDF ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int i2c_omap_errata_i207 (struct omap_i2c_dev*,int) ;
 int omap_i2c_ack_stat (struct omap_i2c_dev*,int) ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;
 int omap_i2c_receive_data (struct omap_i2c_dev*,int,int) ;
 int omap_i2c_transmit_data (struct omap_i2c_dev*,int,int) ;

__attribute__((used)) static int omap_i2c_xfer_data(struct omap_i2c_dev *omap)
{
 u16 bits;
 u16 stat;
 int err = 0, count = 0;

 do {
  bits = omap_i2c_read_reg(omap, OMAP_I2C_IE_REG);
  stat = omap_i2c_read_reg(omap, OMAP_I2C_STAT_REG);
  stat &= bits;


  if (omap->receiver)
   stat &= ~(OMAP_I2C_STAT_XDR | OMAP_I2C_STAT_XRDY);
  else
   stat &= ~(OMAP_I2C_STAT_RDR | OMAP_I2C_STAT_RRDY);

  if (!stat) {

   err = -EAGAIN;
   break;
  }

  dev_dbg(omap->dev, "IRQ (ISR = 0x%04x)\n", stat);
  if (count++ == 100) {
   dev_warn(omap->dev, "Too much work in one IRQ\n");
   break;
  }

  if (stat & OMAP_I2C_STAT_NACK) {
   err |= OMAP_I2C_STAT_NACK;
   omap_i2c_ack_stat(omap, OMAP_I2C_STAT_NACK);
  }

  if (stat & OMAP_I2C_STAT_AL) {
   dev_err(omap->dev, "Arbitration lost\n");
   err |= OMAP_I2C_STAT_AL;
   omap_i2c_ack_stat(omap, OMAP_I2C_STAT_AL);
  }




  if (stat & OMAP_I2C_STAT_ARDY)
   omap_i2c_ack_stat(omap, OMAP_I2C_STAT_ARDY);

  if (stat & (OMAP_I2C_STAT_ARDY | OMAP_I2C_STAT_NACK |
     OMAP_I2C_STAT_AL)) {
   omap_i2c_ack_stat(omap, (OMAP_I2C_STAT_RRDY |
      OMAP_I2C_STAT_RDR |
      OMAP_I2C_STAT_XRDY |
      OMAP_I2C_STAT_XDR |
      OMAP_I2C_STAT_ARDY));
   break;
  }

  if (stat & OMAP_I2C_STAT_RDR) {
   u8 num_bytes = 1;

   if (omap->fifo_size)
    num_bytes = omap->buf_len;

   if (omap->errata & I2C_OMAP_ERRATA_I207) {
    i2c_omap_errata_i207(omap, stat);
    num_bytes = (omap_i2c_read_reg(omap,
     OMAP_I2C_BUFSTAT_REG) >> 8) & 0x3F;
   }

   omap_i2c_receive_data(omap, num_bytes, 1);
   omap_i2c_ack_stat(omap, OMAP_I2C_STAT_RDR);
   continue;
  }

  if (stat & OMAP_I2C_STAT_RRDY) {
   u8 num_bytes = 1;

   if (omap->threshold)
    num_bytes = omap->threshold;

   omap_i2c_receive_data(omap, num_bytes, 0);
   omap_i2c_ack_stat(omap, OMAP_I2C_STAT_RRDY);
   continue;
  }

  if (stat & OMAP_I2C_STAT_XDR) {
   u8 num_bytes = 1;
   int ret;

   if (omap->fifo_size)
    num_bytes = omap->buf_len;

   ret = omap_i2c_transmit_data(omap, num_bytes, 1);
   if (ret < 0)
    break;

   omap_i2c_ack_stat(omap, OMAP_I2C_STAT_XDR);
   continue;
  }

  if (stat & OMAP_I2C_STAT_XRDY) {
   u8 num_bytes = 1;
   int ret;

   if (omap->threshold)
    num_bytes = omap->threshold;

   ret = omap_i2c_transmit_data(omap, num_bytes, 0);
   if (ret < 0)
    break;

   omap_i2c_ack_stat(omap, OMAP_I2C_STAT_XRDY);
   continue;
  }

  if (stat & OMAP_I2C_STAT_ROVR) {
   dev_err(omap->dev, "Receive overrun\n");
   err |= OMAP_I2C_STAT_ROVR;
   omap_i2c_ack_stat(omap, OMAP_I2C_STAT_ROVR);
   break;
  }

  if (stat & OMAP_I2C_STAT_XUDF) {
   dev_err(omap->dev, "Transmit underflow\n");
   err |= OMAP_I2C_STAT_XUDF;
   omap_i2c_ack_stat(omap, OMAP_I2C_STAT_XUDF);
   break;
  }
 } while (stat);

 return err;
}
