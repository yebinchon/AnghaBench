
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hdmi {int dummy; } ;
typedef enum hdmi_audio_sample_size { ____Placeholder_hdmi_audio_sample_size } hdmi_audio_sample_size ;


 int AOUT_16BIT ;
 int AOUT_20BIT ;
 int AOUT_24BIT ;
 int AOUT_BNUM_SEL_MASK ;
 int GRL_AOUT_CFG ;




 int mtk_hdmi_mask (struct mtk_hdmi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_aud_set_bit_num(struct mtk_hdmi *hdmi,
     enum hdmi_audio_sample_size bit_num)
{
 u32 val;

 switch (bit_num) {
 case 131:
  val = AOUT_16BIT;
  break;
 case 130:
  val = AOUT_20BIT;
  break;
 case 129:
 case 128:
  val = AOUT_24BIT;
  break;
 }

 mtk_hdmi_mask(hdmi, GRL_AOUT_CFG, val, AOUT_BNUM_SEL_MASK);
}
