
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int dummy; } ;


 int MHL_TX_DISC_CTRL1_REG ;
 int MHL_TX_DISC_CTRL3_REG ;
 int MHL_TX_DISC_CTRL6_REG ;
 int MHL_TX_INT_CTRL_REG ;
 int USB_ID_OVR ;
 int mhl_tx_writebm (struct sii9234*,int ,int ,int) ;

__attribute__((used)) static void force_usb_id_switch_open(struct sii9234 *ctx)
{

 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL1_REG, 0, 0x01);

 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL6_REG, ~0, USB_ID_OVR);
 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL3_REG, ~0, 0x86);

 mhl_tx_writebm(ctx, MHL_TX_INT_CTRL_REG, 0, 0x30);
}
