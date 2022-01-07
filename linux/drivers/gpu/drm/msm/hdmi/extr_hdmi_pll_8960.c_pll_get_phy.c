
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_pll_8960 {int pdev; } ;
struct hdmi_phy {int dummy; } ;


 struct hdmi_phy* platform_get_drvdata (int ) ;

__attribute__((used)) static inline struct hdmi_phy *pll_get_phy(struct hdmi_pll_8960 *pll)
{
 return platform_get_drvdata(pll->pdev);
}
