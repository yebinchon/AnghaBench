
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;


 int mtk_hdmi_hw_ncts_enable (struct mtk_hdmi*,int) ;

__attribute__((used)) static int mtk_hdmi_aud_on_off_hw_ncts(struct mtk_hdmi *hdmi, bool on)
{
 mtk_hdmi_hw_ncts_enable(hdmi, on);
 return 0;
}
