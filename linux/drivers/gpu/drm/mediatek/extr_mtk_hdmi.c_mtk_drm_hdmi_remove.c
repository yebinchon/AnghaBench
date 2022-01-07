
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_hdmi {int bridge; } ;


 int drm_bridge_remove (int *) ;
 int mtk_hdmi_clk_disable_audio (struct mtk_hdmi*) ;
 struct mtk_hdmi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_drm_hdmi_remove(struct platform_device *pdev)
{
 struct mtk_hdmi *hdmi = platform_get_drvdata(pdev);

 drm_bridge_remove(&hdmi->bridge);
 mtk_hdmi_clk_disable_audio(hdmi);
 return 0;
}
