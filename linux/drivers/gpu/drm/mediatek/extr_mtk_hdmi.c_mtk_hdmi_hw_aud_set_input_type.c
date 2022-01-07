
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hdmi {int dummy; } ;
typedef enum hdmi_aud_input_type { ____Placeholder_hdmi_aud_input_type } hdmi_aud_input_type ;


 int CFG1_SPDIF ;
 int GRL_CFG1 ;
 int HDMI_AUD_INPUT_I2S ;
 int HDMI_AUD_INPUT_SPDIF ;
 int mtk_hdmi_read (struct mtk_hdmi*,int ) ;
 int mtk_hdmi_write (struct mtk_hdmi*,int ,int) ;

__attribute__((used)) static void mtk_hdmi_hw_aud_set_input_type(struct mtk_hdmi *hdmi,
        enum hdmi_aud_input_type input_type)
{
 u32 val;

 val = mtk_hdmi_read(hdmi, GRL_CFG1);
 if (input_type == HDMI_AUD_INPUT_I2S &&
     (val & CFG1_SPDIF) == CFG1_SPDIF) {
  val &= ~CFG1_SPDIF;
 } else if (input_type == HDMI_AUD_INPUT_SPDIF &&
  (val & CFG1_SPDIF) == 0) {
  val |= CFG1_SPDIF;
 }
 mtk_hdmi_write(hdmi, GRL_CFG1, val);
}
