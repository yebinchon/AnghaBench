
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_property_blob {scalar_t__ data; } ;
typedef struct drm_color_lut const drm_color_lut ;


 int drm_color_lut_size (struct drm_property_blob const*) ;

__attribute__((used)) static const struct drm_color_lut *
__extract_blob_lut(const struct drm_property_blob *blob, uint32_t *size)
{
 *size = blob ? drm_color_lut_size(blob) : 0;
 return blob ? (struct drm_color_lut *)blob->data : ((void*)0);
}
