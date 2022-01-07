
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct mixer_context {int * vp_regs; TYPE_1__* pdev; scalar_t__ sclk_hdmi; void* mout_mixer; void* sclk_mixer; int flags; void* vp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENODEV ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int MXR_BIT_HAS_SCLK ;
 int clk_set_parent (void*,scalar_t__) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 int * devm_ioremap (struct device*,int ,int ) ;
 struct resource* platform_get_resource (TYPE_1__*,int ,int) ;
 int resource_size (struct resource*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int vp_resources_init(struct mixer_context *mixer_ctx)
{
 struct device *dev = &mixer_ctx->pdev->dev;
 struct resource *res;

 mixer_ctx->vp = devm_clk_get(dev, "vp");
 if (IS_ERR(mixer_ctx->vp)) {
  dev_err(dev, "failed to get clock 'vp'\n");
  return -ENODEV;
 }

 if (test_bit(MXR_BIT_HAS_SCLK, &mixer_ctx->flags)) {
  mixer_ctx->sclk_mixer = devm_clk_get(dev, "sclk_mixer");
  if (IS_ERR(mixer_ctx->sclk_mixer)) {
   dev_err(dev, "failed to get clock 'sclk_mixer'\n");
   return -ENODEV;
  }
  mixer_ctx->mout_mixer = devm_clk_get(dev, "mout_mixer");
  if (IS_ERR(mixer_ctx->mout_mixer)) {
   dev_err(dev, "failed to get clock 'mout_mixer'\n");
   return -ENODEV;
  }

  if (mixer_ctx->sclk_hdmi && mixer_ctx->mout_mixer)
   clk_set_parent(mixer_ctx->mout_mixer,
           mixer_ctx->sclk_hdmi);
 }

 res = platform_get_resource(mixer_ctx->pdev, IORESOURCE_MEM, 1);
 if (res == ((void*)0)) {
  dev_err(dev, "get memory resource failed.\n");
  return -ENXIO;
 }

 mixer_ctx->vp_regs = devm_ioremap(dev, res->start,
       resource_size(res));
 if (mixer_ctx->vp_regs == ((void*)0)) {
  dev_err(dev, "register mapping failed.\n");
  return -ENXIO;
 }

 return 0;
}
