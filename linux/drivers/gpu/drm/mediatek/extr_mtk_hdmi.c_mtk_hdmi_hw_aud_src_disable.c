
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hdmi {int dummy; } ;


 int GRL_MIX_CTRL ;
 int GRL_SHIFT_L1 ;
 int MIX_CTRL_SRC_EN ;
 int mtk_hdmi_read (struct mtk_hdmi*,int ) ;
 int mtk_hdmi_write (struct mtk_hdmi*,int ,int) ;

__attribute__((used)) static void mtk_hdmi_hw_aud_src_disable(struct mtk_hdmi *hdmi)
{
 u32 val;

 val = mtk_hdmi_read(hdmi, GRL_MIX_CTRL);
 val &= ~MIX_CTRL_SRC_EN;
 mtk_hdmi_write(hdmi, GRL_MIX_CTRL, val);
 mtk_hdmi_write(hdmi, GRL_SHIFT_L1, 0x00);
}
