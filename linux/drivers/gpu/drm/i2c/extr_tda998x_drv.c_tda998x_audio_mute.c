
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int dummy; } ;


 int AIP_CNTRL_0_RST_FIFO ;
 int REG_AIP_CNTRL_0 ;
 int REG_SOFTRESET ;
 int SOFTRESET_AUDIO ;
 int reg_clear (struct tda998x_priv*,int ,int ) ;
 int reg_set (struct tda998x_priv*,int ,int ) ;

__attribute__((used)) static void tda998x_audio_mute(struct tda998x_priv *priv, bool on)
{
 if (on) {
  reg_set(priv, REG_SOFTRESET, SOFTRESET_AUDIO);
  reg_clear(priv, REG_SOFTRESET, SOFTRESET_AUDIO);
  reg_set(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_RST_FIFO);
 } else {
  reg_clear(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_RST_FIFO);
 }
}
