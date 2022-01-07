
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
typedef enum hdmi_phy_type { ____Placeholder_hdmi_phy_type } hdmi_phy_type ;






 int msm_hdmi_pll_8960_init (struct platform_device*) ;
 int msm_hdmi_pll_8996_init (struct platform_device*) ;

__attribute__((used)) static int msm_hdmi_phy_pll_init(struct platform_device *pdev,
        enum hdmi_phy_type type)
{
 int ret;

 switch (type) {
 case 131:
  ret = msm_hdmi_pll_8960_init(pdev);
  break;
 case 130:
  ret = msm_hdmi_pll_8996_init(pdev);
  break;



 case 129:
 case 128:
 default:
  ret = 0;
  break;
 }

 return ret;
}
