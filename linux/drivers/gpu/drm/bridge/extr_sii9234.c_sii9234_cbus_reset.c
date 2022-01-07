
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int dummy; } ;


 int BIT_CBUS_RESET ;
 int MHL_TX_SRST ;
 int T_SRC_CBUS_DEGLITCH ;
 int cbus_writeb (struct sii9234*,int,int) ;
 int mhl_tx_writebm (struct sii9234*,int ,int ,int ) ;
 int msleep (int ) ;
 int sii9234_clear_error (struct sii9234*) ;

__attribute__((used)) static int sii9234_cbus_reset(struct sii9234 *ctx)
{
 int i;

 mhl_tx_writebm(ctx, MHL_TX_SRST, ~0, BIT_CBUS_RESET);
 msleep(T_SRC_CBUS_DEGLITCH);
 mhl_tx_writebm(ctx, MHL_TX_SRST, 0, BIT_CBUS_RESET);

 for (i = 0; i < 4; i++) {




  cbus_writeb(ctx, 0xE0 + i, 0xF2);




  cbus_writeb(ctx, 0xF0 + i, 0xF2);
 }

 return sii9234_clear_error(ctx);
}
