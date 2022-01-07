
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mc13783_adc_priv {int mc13xxx; } ;


 unsigned int MC13XXX_USE_TOUCHSCREEN ;
 unsigned int mc13xxx_get_flags (int ) ;
 struct mc13783_adc_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mc13783_adc_use_touchscreen(struct platform_device *pdev)
{
 struct mc13783_adc_priv *priv = platform_get_drvdata(pdev);
 unsigned flags = mc13xxx_get_flags(priv->mc13xxx);

 return flags & MC13XXX_USE_TOUCHSCREEN;
}
