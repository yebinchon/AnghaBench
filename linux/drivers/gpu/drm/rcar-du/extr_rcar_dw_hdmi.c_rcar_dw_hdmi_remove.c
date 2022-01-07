
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_hdmi {int dummy; } ;


 int dw_hdmi_remove (struct dw_hdmi*) ;
 struct dw_hdmi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rcar_dw_hdmi_remove(struct platform_device *pdev)
{
 struct dw_hdmi *hdmi = platform_get_drvdata(pdev);

 dw_hdmi_remove(hdmi);

 return 0;
}
