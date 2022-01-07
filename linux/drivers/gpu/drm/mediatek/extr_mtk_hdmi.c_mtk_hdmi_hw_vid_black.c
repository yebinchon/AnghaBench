
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;


 int GEN_RGB ;
 int NORMAL_PATH ;
 int VIDEO_CFG_4 ;
 int VIDEO_SOURCE_SEL ;
 int mtk_hdmi_mask (struct mtk_hdmi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_vid_black(struct mtk_hdmi *hdmi, bool black)
{
 mtk_hdmi_mask(hdmi, VIDEO_CFG_4, black ? GEN_RGB : NORMAL_PATH,
        VIDEO_SOURCE_SEL);
}
