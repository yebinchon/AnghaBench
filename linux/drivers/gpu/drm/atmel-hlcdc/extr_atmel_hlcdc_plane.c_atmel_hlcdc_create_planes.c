
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct drm_device {int dev; struct atmel_hlcdc_dc* dev_private; } ;
struct atmel_hlcdc_layer_desc {scalar_t__ type; } ;
struct atmel_hlcdc_dma_channel_dscr {int dummy; } ;
struct atmel_hlcdc_dc {int dscrpool; TYPE_1__* desc; } ;
struct TYPE_2__ {int nlayers; struct atmel_hlcdc_layer_desc* layers; } ;


 scalar_t__ ATMEL_HLCDC_BASE_LAYER ;
 scalar_t__ ATMEL_HLCDC_CURSOR_LAYER ;
 scalar_t__ ATMEL_HLCDC_OVERLAY_LAYER ;
 int ENOMEM ;
 int atmel_hlcdc_plane_create (struct drm_device*,struct atmel_hlcdc_layer_desc const*) ;
 int dmam_pool_create (char*,int ,int,int,int ) ;

int atmel_hlcdc_create_planes(struct drm_device *dev)
{
 struct atmel_hlcdc_dc *dc = dev->dev_private;
 const struct atmel_hlcdc_layer_desc *descs = dc->desc->layers;
 int nlayers = dc->desc->nlayers;
 int i, ret;

 dc->dscrpool = dmam_pool_create("atmel-hlcdc-dscr", dev->dev,
    sizeof(struct atmel_hlcdc_dma_channel_dscr),
    sizeof(u64), 0);
 if (!dc->dscrpool)
  return -ENOMEM;

 for (i = 0; i < nlayers; i++) {
  if (descs[i].type != ATMEL_HLCDC_BASE_LAYER &&
      descs[i].type != ATMEL_HLCDC_OVERLAY_LAYER &&
      descs[i].type != ATMEL_HLCDC_CURSOR_LAYER)
   continue;

  ret = atmel_hlcdc_plane_create(dev, &descs[i]);
  if (ret)
   return ret;
 }

 return 0;
}
