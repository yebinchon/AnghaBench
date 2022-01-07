
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_device {int dummy; } ;
struct platform_device {int dev; } ;


 int component_del (int *,int *) ;
 int kfree (struct venc_device*) ;
 struct venc_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int venc_component_ops ;
 int venc_uninit_output (struct venc_device*) ;

__attribute__((used)) static int venc_remove(struct platform_device *pdev)
{
 struct venc_device *venc = platform_get_drvdata(pdev);

 component_del(&pdev->dev, &venc_component_ops);

 venc_uninit_output(venc);

 pm_runtime_disable(&pdev->dev);

 kfree(venc);
 return 0;
}
