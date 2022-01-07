
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tda998x_audio_settings {scalar_t__ ena_ap; int sample_rate; int i2s_format; int cts_n; int* status; int cea; TYPE_1__* route; } ;
struct tda998x_priv {struct tda998x_audio_settings audio; } ;
struct TYPE_2__ {int ena_aclk; int mux_ap; int aip_clksel; } ;


 int AIP_CNTRL_0_ACR_MAN ;
 int AIP_CNTRL_0_LAYOUT ;
 int AIP_CNTRL_0_RST_CTS ;
 int REG_ACR_CTS_0 ;
 int REG_AIP_CLKSEL ;
 int REG_AIP_CNTRL_0 ;
 int REG_AUDIO_DIV ;
 int REG_CH_STAT_B (int ) ;
 int REG_CTS_N ;
 int REG_ENA_ACLK ;
 int REG_ENA_AP ;
 int REG_I2S_FORMAT ;
 int REG_MUX_AP ;
 int msleep (int) ;
 int reg_clear (struct tda998x_priv*,int ,int) ;
 int reg_set (struct tda998x_priv*,int ,int) ;
 int reg_write (struct tda998x_priv*,int ,int) ;
 int reg_write_range (struct tda998x_priv*,int ,int*,int) ;
 int tda998x_audio_mute (struct tda998x_priv*,int) ;
 int tda998x_get_adiv (struct tda998x_priv*,int) ;
 int tda998x_write_aif (struct tda998x_priv*,int *) ;

__attribute__((used)) static void tda998x_configure_audio(struct tda998x_priv *priv)
{
 const struct tda998x_audio_settings *settings = &priv->audio;
 u8 buf[6], adiv;
 u32 n;


 if (settings->ena_ap == 0)
  return;

 adiv = tda998x_get_adiv(priv, settings->sample_rate);


 reg_write(priv, REG_ENA_AP, settings->ena_ap);
 reg_write(priv, REG_ENA_ACLK, settings->route->ena_aclk);
 reg_write(priv, REG_MUX_AP, settings->route->mux_ap);
 reg_write(priv, REG_I2S_FORMAT, settings->i2s_format);
 reg_write(priv, REG_AIP_CLKSEL, settings->route->aip_clksel);
 reg_clear(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_LAYOUT |
     AIP_CNTRL_0_ACR_MAN);
 reg_write(priv, REG_CTS_N, settings->cts_n);
 reg_write(priv, REG_AUDIO_DIV, adiv);





 n = 128 * settings->sample_rate / 1000;


 buf[0] = 0x44;
 buf[1] = 0x42;
 buf[2] = 0x01;
 buf[3] = n;
 buf[4] = n >> 8;
 buf[5] = n >> 16;
 reg_write_range(priv, REG_ACR_CTS_0, buf, 6);


 reg_set(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_RST_CTS);
 reg_clear(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_RST_CTS);





 buf[0] = settings->status[0];
 buf[1] = settings->status[1];
 buf[2] = settings->status[3];
 buf[3] = settings->status[4];
 reg_write_range(priv, REG_CH_STAT_B(0), buf, 4);

 tda998x_audio_mute(priv, 1);
 msleep(20);
 tda998x_audio_mute(priv, 0);

 tda998x_write_aif(priv, &settings->cea);
}
