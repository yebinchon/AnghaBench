
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hdmi {int dummy; } ;
typedef enum hdmi_aud_mclk { ____Placeholder_hdmi_aud_mclk } hdmi_aud_mclk ;


 int CFG5_CD_RATIO_MASK ;
 int CFG5_FS128 ;
 int CFG5_FS256 ;
 int CFG5_FS384 ;
 int CFG5_FS512 ;
 int CFG5_FS768 ;
 int GRL_CFG5 ;





 int mtk_hdmi_read (struct mtk_hdmi*,int ) ;
 int mtk_hdmi_write (struct mtk_hdmi*,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_aud_set_mclk(struct mtk_hdmi *hdmi,
         enum hdmi_aud_mclk mclk)
{
 u32 val;

 val = mtk_hdmi_read(hdmi, GRL_CFG5);
 val &= CFG5_CD_RATIO_MASK;

 switch (mclk) {
 case 132:
  val |= CFG5_FS128;
  break;
 case 131:
  val |= CFG5_FS256;
  break;
 case 130:
  val |= CFG5_FS384;
  break;
 case 129:
  val |= CFG5_FS512;
  break;
 case 128:
  val |= CFG5_FS768;
  break;
 default:
  val |= CFG5_FS256;
  break;
 }
 mtk_hdmi_write(hdmi, GRL_CFG5, val);
}
