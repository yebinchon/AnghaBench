
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tda998x_priv {int tmds_clock; TYPE_1__* hdmi; } ;
struct TYPE_2__ {int dev; } ;


 int AUDIO_DIV_SERCLK_1 ;
 int AUDIO_DIV_SERCLK_32 ;
 int dev_dbg (int *,char*,unsigned long,unsigned int,unsigned long,int) ;

__attribute__((used)) static u8 tda998x_get_adiv(struct tda998x_priv *priv, unsigned int fs)
{
 unsigned long min_audio_clk = fs * 128;
 unsigned long ser_clk = priv->tmds_clock * 1000;
 u8 adiv;

 for (adiv = AUDIO_DIV_SERCLK_32; adiv != AUDIO_DIV_SERCLK_1; adiv--)
  if (ser_clk > min_audio_clk << adiv)
   break;

 dev_dbg(&priv->hdmi->dev,
  "ser_clk=%luHz fs=%uHz min_aclk=%luHz adiv=%d\n",
  ser_clk, fs, min_audio_clk, adiv);

 return adiv;
}
