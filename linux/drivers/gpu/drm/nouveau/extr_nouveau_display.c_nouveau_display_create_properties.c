
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ oclass; } ;
struct TYPE_4__ {TYPE_1__ object; } ;
struct nouveau_display {void* color_vibrance_property; void* vibrant_hue_property; void* underscan_vborder_property; void* underscan_hborder_property; int underscan_property; int dithering_depth; int dithering_mode; TYPE_2__ disp; } ;
struct drm_device {int dummy; } ;


 scalar_t__ GF110_DISP ;
 scalar_t__ NV50_DISP ;
 int PROP_ENUM (int ,int,char*,int ) ;
 int dither_depth ;
 int dither_mode ;
 void* drm_property_create_range (struct drm_device*,int ,char*,int ,int) ;
 struct nouveau_display* nouveau_display (struct drm_device*) ;
 int underscan ;

__attribute__((used)) static void
nouveau_display_create_properties(struct drm_device *dev)
{
 struct nouveau_display *disp = nouveau_display(dev);
 int gen;

 if (disp->disp.object.oclass < NV50_DISP)
  gen = 0;
 else
 if (disp->disp.object.oclass < GF110_DISP)
  gen = 1;
 else
  gen = 2;

 PROP_ENUM(disp->dithering_mode, gen, "dithering mode", dither_mode);
 PROP_ENUM(disp->dithering_depth, gen, "dithering depth", dither_depth);
 PROP_ENUM(disp->underscan_property, gen, "underscan", underscan);

 disp->underscan_hborder_property =
  drm_property_create_range(dev, 0, "underscan hborder", 0, 128);

 disp->underscan_vborder_property =
  drm_property_create_range(dev, 0, "underscan vborder", 0, 128);

 if (gen < 1)
  return;


 disp->vibrant_hue_property =
  drm_property_create_range(dev, 0, "vibrant hue", 0, 180);


 disp->color_vibrance_property =
  drm_property_create_range(dev, 0, "color vibrance", 0, 200);
}
