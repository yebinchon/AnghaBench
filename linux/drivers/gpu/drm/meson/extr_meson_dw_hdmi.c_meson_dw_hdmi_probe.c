
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_add (int *,int *) ;
 int meson_dw_hdmi_ops ;

__attribute__((used)) static int meson_dw_hdmi_probe(struct platform_device *pdev)
{
 return component_add(&pdev->dev, &meson_dw_hdmi_ops);
}
