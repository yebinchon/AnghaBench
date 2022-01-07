
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;


 int mtk_hdmi_hw_send_aud_packet (struct mtk_hdmi*,int) ;

__attribute__((used)) static int mtk_hdmi_aud_enable_packet(struct mtk_hdmi *hdmi, bool enable)
{
 mtk_hdmi_hw_send_aud_packet(hdmi, enable);
 return 0;
}
