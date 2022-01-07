
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int dummy; } ;


 int AUDIO_DIV_SERCLK_8 ;
 int MAIN_CNTRL0_SR ;
 int PLL_SERIAL_2_SRL_NOSC (int) ;
 int REG_AUDIO_DIV ;
 int REG_BUFFER_OUT ;
 int REG_MAIN_CNTRL0 ;
 int REG_MUX_VP_VIP_OUT ;
 int REG_PLL_SCG1 ;
 int REG_PLL_SCG2 ;
 int REG_PLL_SCGN1 ;
 int REG_PLL_SCGN2 ;
 int REG_PLL_SCGR1 ;
 int REG_PLL_SCGR2 ;
 int REG_PLL_SERIAL_1 ;
 int REG_PLL_SERIAL_2 ;
 int REG_PLL_SERIAL_3 ;
 int REG_SEL_CLK ;
 int REG_SERIALIZER ;
 int REG_SOFTRESET ;
 int SEL_CLK_ENA_SC_CLK ;
 int SEL_CLK_SEL_CLK1 ;
 int SOFTRESET_AUDIO ;
 int SOFTRESET_I2C_MASTER ;
 int msleep (int) ;
 int reg_clear (struct tda998x_priv*,int ,int ) ;
 int reg_set (struct tda998x_priv*,int ,int ) ;
 int reg_write (struct tda998x_priv*,int ,int) ;

__attribute__((used)) static void
tda998x_reset(struct tda998x_priv *priv)
{

 reg_write(priv, REG_SOFTRESET, SOFTRESET_AUDIO | SOFTRESET_I2C_MASTER);
 msleep(50);
 reg_write(priv, REG_SOFTRESET, 0);
 msleep(50);


 reg_set(priv, REG_MAIN_CNTRL0, MAIN_CNTRL0_SR);
 reg_clear(priv, REG_MAIN_CNTRL0, MAIN_CNTRL0_SR);


 reg_write(priv, REG_PLL_SERIAL_1, 0x00);
 reg_write(priv, REG_PLL_SERIAL_2, PLL_SERIAL_2_SRL_NOSC(1));
 reg_write(priv, REG_PLL_SERIAL_3, 0x00);
 reg_write(priv, REG_SERIALIZER, 0x00);
 reg_write(priv, REG_BUFFER_OUT, 0x00);
 reg_write(priv, REG_PLL_SCG1, 0x00);
 reg_write(priv, REG_AUDIO_DIV, AUDIO_DIV_SERCLK_8);
 reg_write(priv, REG_SEL_CLK, SEL_CLK_SEL_CLK1 | SEL_CLK_ENA_SC_CLK);
 reg_write(priv, REG_PLL_SCGN1, 0xfa);
 reg_write(priv, REG_PLL_SCGN2, 0x00);
 reg_write(priv, REG_PLL_SCGR1, 0x5b);
 reg_write(priv, REG_PLL_SCGR2, 0x00);
 reg_write(priv, REG_PLL_SCG2, 0x10);


 reg_write(priv, REG_MUX_VP_VIP_OUT, 0x24);
}
