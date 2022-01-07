
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_hdmi {int dummy; } ;


 scalar_t__ IS_ERR (struct dw_hdmi*) ;
 int PTR_ERR (struct dw_hdmi*) ;
 struct dw_hdmi* dw_hdmi_probe (struct platform_device*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct dw_hdmi*) ;
 int rcar_dw_hdmi_plat_data ;

__attribute__((used)) static int rcar_dw_hdmi_probe(struct platform_device *pdev)
{
 struct dw_hdmi *hdmi;

 hdmi = dw_hdmi_probe(pdev, &rcar_dw_hdmi_plat_data);
 if (IS_ERR(hdmi))
  return PTR_ERR(hdmi);

 platform_set_drvdata(pdev, hdmi);

 return 0;
}
