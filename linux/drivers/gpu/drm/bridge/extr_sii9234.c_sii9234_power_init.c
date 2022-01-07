
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int dummy; } ;


 int HDMI_RX_TMDS_CH_EN_REG ;
 int HDMI_RX_TMDS_CLK_EN_REG ;
 int TPI_DPD_REG ;
 int hdmi_writeb (struct sii9234*,int ,int) ;
 int mhl_tx_writeb (struct sii9234*,int,int) ;
 int sii9234_clear_error (struct sii9234*) ;
 int tpi_writeb (struct sii9234*,int ,int) ;

__attribute__((used)) static int sii9234_power_init(struct sii9234 *ctx)
{

 tpi_writeb(ctx, TPI_DPD_REG, 0x3F);

 hdmi_writeb(ctx, HDMI_RX_TMDS_CLK_EN_REG, 0x01);

 hdmi_writeb(ctx, HDMI_RX_TMDS_CH_EN_REG, 0x15);

 mhl_tx_writeb(ctx, 0x08, 0x35);
 return sii9234_clear_error(ctx);
}
