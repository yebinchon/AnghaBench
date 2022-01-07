
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hdmi {int dummy; } ;
typedef enum hdmi_aud_i2s_fmt { ____Placeholder_hdmi_aud_i2s_fmt } hdmi_aud_i2s_fmt ;


 int CFG0_I2S_MODE_I2S ;
 int CFG0_I2S_MODE_LTJ ;
 int CFG0_I2S_MODE_MASK ;
 int CFG0_I2S_MODE_RTJ ;
 int CFG0_W_LENGTH_16BIT ;
 int CFG0_W_LENGTH_24BIT ;
 int CFG0_W_LENGTH_MASK ;
 int GRL_CFG0 ;






 int mtk_hdmi_read (struct mtk_hdmi*,int ) ;
 int mtk_hdmi_write (struct mtk_hdmi*,int ,int) ;

__attribute__((used)) static void mtk_hdmi_hw_aud_set_i2s_fmt(struct mtk_hdmi *hdmi,
     enum hdmi_aud_i2s_fmt i2s_fmt)
{
 u32 val;

 val = mtk_hdmi_read(hdmi, GRL_CFG0);
 val &= ~(CFG0_W_LENGTH_MASK | CFG0_I2S_MODE_MASK);

 switch (i2s_fmt) {
 case 128:
  val |= CFG0_I2S_MODE_RTJ | CFG0_W_LENGTH_24BIT;
  break;
 case 129:
  val |= CFG0_I2S_MODE_RTJ | CFG0_W_LENGTH_16BIT;
  break;
 case 130:
 default:
  val |= CFG0_I2S_MODE_LTJ | CFG0_W_LENGTH_24BIT;
  break;
 case 131:
  val |= CFG0_I2S_MODE_LTJ | CFG0_W_LENGTH_16BIT;
  break;
 case 132:
  val |= CFG0_I2S_MODE_I2S | CFG0_W_LENGTH_24BIT;
  break;
 case 133:
  val |= CFG0_I2S_MODE_I2S | CFG0_W_LENGTH_16BIT;
  break;
 }
 mtk_hdmi_write(hdmi, GRL_CFG0, val);
}
