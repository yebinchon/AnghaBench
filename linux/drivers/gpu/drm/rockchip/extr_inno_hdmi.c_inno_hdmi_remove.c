
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_del (int *,int *) ;
 int inno_hdmi_ops ;

__attribute__((used)) static int inno_hdmi_remove(struct platform_device *pdev)
{
 component_del(&pdev->dev, &inno_hdmi_ops);

 return 0;
}
