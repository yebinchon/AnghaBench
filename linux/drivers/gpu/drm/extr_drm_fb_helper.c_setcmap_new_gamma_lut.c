
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct fb_cmap {int start; int len; void** blue; void** green; void** red; } ;
struct drm_property_blob {struct drm_color_lut* data; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int gamma_size; void** gamma_store; struct drm_device* dev; } ;
struct drm_color_lut {void* blue; void* green; void* red; } ;


 int EINVAL ;
 struct drm_property_blob* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct drm_property_blob*) ;
 struct drm_property_blob* drm_property_create_blob (struct drm_device*,int,int *) ;

__attribute__((used)) static struct drm_property_blob *setcmap_new_gamma_lut(struct drm_crtc *crtc,
             struct fb_cmap *cmap)
{
 struct drm_device *dev = crtc->dev;
 struct drm_property_blob *gamma_lut;
 struct drm_color_lut *lut;
 int size = crtc->gamma_size;
 int i;

 if (!size || cmap->start + cmap->len > size)
  return ERR_PTR(-EINVAL);

 gamma_lut = drm_property_create_blob(dev, sizeof(*lut) * size, ((void*)0));
 if (IS_ERR(gamma_lut))
  return gamma_lut;

 lut = gamma_lut->data;
 if (cmap->start || cmap->len != size) {
  u16 *r = crtc->gamma_store;
  u16 *g = r + crtc->gamma_size;
  u16 *b = g + crtc->gamma_size;

  for (i = 0; i < cmap->start; i++) {
   lut[i].red = r[i];
   lut[i].green = g[i];
   lut[i].blue = b[i];
  }
  for (i = cmap->start + cmap->len; i < size; i++) {
   lut[i].red = r[i];
   lut[i].green = g[i];
   lut[i].blue = b[i];
  }
 }

 for (i = 0; i < cmap->len; i++) {
  lut[cmap->start + i].red = cmap->red[i];
  lut[cmap->start + i].green = cmap->green[i];
  lut[cmap->start + i].blue = cmap->blue[i];
 }

 return gamma_lut;
}
