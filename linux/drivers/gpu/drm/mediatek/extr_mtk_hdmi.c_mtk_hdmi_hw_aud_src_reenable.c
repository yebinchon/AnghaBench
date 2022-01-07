
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hdmi {int dummy; } ;


 int GRL_MIX_CTRL ;
 int MIX_CTRL_SRC_EN ;
 int mtk_hdmi_read (struct mtk_hdmi*,int ) ;
 int mtk_hdmi_write (struct mtk_hdmi*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mtk_hdmi_hw_aud_src_reenable(struct mtk_hdmi *hdmi)
{
 u32 val;

 val = mtk_hdmi_read(hdmi, GRL_MIX_CTRL);
 if (val & MIX_CTRL_SRC_EN) {
  val &= ~MIX_CTRL_SRC_EN;
  mtk_hdmi_write(hdmi, GRL_MIX_CTRL, val);
  usleep_range(255, 512);
  val |= MIX_CTRL_SRC_EN;
  mtk_hdmi_write(hdmi, GRL_MIX_CTRL, val);
 }
}
