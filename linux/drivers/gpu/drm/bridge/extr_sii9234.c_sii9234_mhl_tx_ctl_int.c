
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int dummy; } ;


 int MHL_TX_MHLTX_CTL1_REG ;
 int MHL_TX_MHLTX_CTL2_REG ;
 int MHL_TX_MHLTX_CTL4_REG ;
 int MHL_TX_MHLTX_CTL7_REG ;
 int mhl_tx_writeb (struct sii9234*,int ,int) ;
 int sii9234_clear_error (struct sii9234*) ;

__attribute__((used)) static int sii9234_mhl_tx_ctl_int(struct sii9234 *ctx)
{
 mhl_tx_writeb(ctx, MHL_TX_MHLTX_CTL1_REG, 0xD0);
 mhl_tx_writeb(ctx, MHL_TX_MHLTX_CTL2_REG, 0xFC);
 mhl_tx_writeb(ctx, MHL_TX_MHLTX_CTL4_REG, 0xEB);
 mhl_tx_writeb(ctx, MHL_TX_MHLTX_CTL7_REG, 0x0C);

 return sii9234_clear_error(ctx);
}
