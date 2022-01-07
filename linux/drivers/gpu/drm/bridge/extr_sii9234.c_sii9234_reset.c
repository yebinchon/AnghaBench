
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int dummy; } ;


 int ATT_THRESH_SHIFT ;
 int BLOCK_RGND_INT ;
 int CBUS_LINK_CONTROL_2_REG ;
 int CBUS_LKOUT_MASK ;
 int DEGLITCH_TIME_50MS ;
 int DVRFLT_SEL ;
 int MHL_DISC_FAIL_MASK ;
 int MHL_EST_MASK ;
 int MHL_INIT_TIMEOUT ;
 int MHL_TX_DISC_CTRL1_REG ;
 int MHL_TX_DISC_CTRL2_REG ;
 int MHL_TX_DISC_CTRL3_REG ;
 int MHL_TX_DISC_CTRL4_REG ;
 int MHL_TX_DISC_CTRL5_REG ;
 int MHL_TX_DISC_CTRL6_REG ;
 int MHL_TX_DISC_CTRL8_REG ;
 int MHL_TX_INTR1_ENABLE_REG ;
 int MHL_TX_INTR4_ENABLE_REG ;
 int MHL_TX_INT_CTRL_REG ;
 int MHL_TX_MHLTX_CTL6_REG ;
 int RGND_READY_MASK ;
 int SINGLE_ATT ;
 int USB_ID_OVR ;
 int cbus_writebm (struct sii9234*,int ,int ,int ) ;
 int force_usb_id_switch_open (struct sii9234*) ;
 int mhl_tx_writeb (struct sii9234*,int,int) ;
 int mhl_tx_writebm (struct sii9234*,int,int,int) ;
 int msleep (int) ;
 int release_usb_id_switch_open (struct sii9234*) ;
 int sii9234_cbus_init (struct sii9234*) ;
 int sii9234_cbus_reset (struct sii9234*) ;
 int sii9234_clear_error (struct sii9234*) ;
 int sii9234_hdmi_init (struct sii9234*) ;
 int sii9234_mhl_tx_ctl_int (struct sii9234*) ;
 int sii9234_power_init (struct sii9234*) ;

__attribute__((used)) static int sii9234_reset(struct sii9234 *ctx)
{
 int ret;

 sii9234_clear_error(ctx);

 ret = sii9234_power_init(ctx);
 if (ret < 0)
  return ret;
 ret = sii9234_cbus_reset(ctx);
 if (ret < 0)
  return ret;
 ret = sii9234_hdmi_init(ctx);
 if (ret < 0)
  return ret;
 ret = sii9234_mhl_tx_ctl_int(ctx);
 if (ret < 0)
  return ret;


 mhl_tx_writeb(ctx, 0x2B, 0x01);

 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL1_REG, 0x04, 0x06);

 mhl_tx_writeb(ctx, MHL_TX_DISC_CTRL2_REG, (1 << 7)
        | 2 << ATT_THRESH_SHIFT | DEGLITCH_TIME_50MS);





 mhl_tx_writeb(ctx, MHL_TX_DISC_CTRL5_REG, 0x77);
 cbus_writebm(ctx, CBUS_LINK_CONTROL_2_REG, ~0, MHL_INIT_TIMEOUT);
 mhl_tx_writeb(ctx, MHL_TX_MHLTX_CTL6_REG, 0xA0);

 mhl_tx_writeb(ctx, MHL_TX_DISC_CTRL6_REG, BLOCK_RGND_INT |
        DVRFLT_SEL | SINGLE_ATT);

 mhl_tx_writeb(ctx, MHL_TX_DISC_CTRL8_REG, 0);

 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL6_REG, ~0, USB_ID_OVR);
 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL3_REG, ~0, 0x86);




 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL4_REG, ~0, 0x8C);

 mhl_tx_writebm(ctx, MHL_TX_INT_CTRL_REG, 0, 0x06);

 msleep(25);


 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL6_REG, 0, USB_ID_OVR);
 mhl_tx_writeb(ctx, MHL_TX_DISC_CTRL1_REG, 0x27);

 ret = sii9234_clear_error(ctx);
 if (ret < 0)
  return ret;
 ret = sii9234_cbus_init(ctx);
 if (ret < 0)
  return ret;


 mhl_tx_writeb(ctx, 0x05, 0x04);

 mhl_tx_writeb(ctx, 0x0D, 0x1C);
 mhl_tx_writeb(ctx, MHL_TX_INTR4_ENABLE_REG,
        RGND_READY_MASK | CBUS_LKOUT_MASK
   | MHL_DISC_FAIL_MASK | MHL_EST_MASK);
 mhl_tx_writeb(ctx, MHL_TX_INTR1_ENABLE_REG, 0x60);


 force_usb_id_switch_open(ctx);
 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL4_REG, 0, 0xF0);
 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL5_REG, 0, 0x03);
 release_usb_id_switch_open(ctx);


 mhl_tx_writebm(ctx, MHL_TX_INT_CTRL_REG, 0, 1 << 5);
 mhl_tx_writebm(ctx, MHL_TX_INT_CTRL_REG, ~0, 1 << 4);

 return sii9234_clear_error(ctx);
}
