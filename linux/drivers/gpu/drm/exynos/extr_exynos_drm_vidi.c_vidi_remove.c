
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vidi_context {struct edid* raw_edid; } ;
struct platform_device {int dev; } ;
struct edid {int dummy; } ;


 int EINVAL ;
 int component_del (int *,int *) ;
 scalar_t__ fake_edid_info ;
 int kfree (struct edid*) ;
 struct vidi_context* platform_get_drvdata (struct platform_device*) ;
 int vidi_component_ops ;

__attribute__((used)) static int vidi_remove(struct platform_device *pdev)
{
 struct vidi_context *ctx = platform_get_drvdata(pdev);

 if (ctx->raw_edid != (struct edid *)fake_edid_info) {
  kfree(ctx->raw_edid);
  ctx->raw_edid = ((void*)0);

  return -EINVAL;
 }

 component_del(&pdev->dev, &vidi_component_ops);

 return 0;
}
