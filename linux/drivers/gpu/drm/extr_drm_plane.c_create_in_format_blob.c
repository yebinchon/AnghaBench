
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct drm_property_blob {TYPE_2__ base; struct drm_format_modifier_blob* data; } ;
struct drm_plane {int format_count; int modifier_count; int base; int * modifiers; int * format_types; TYPE_1__* funcs; } ;
struct drm_mode_config {int modifiers_property; } ;
struct drm_format_modifier_blob {int count_formats; int formats_offset; int count_modifiers; scalar_t__ modifiers_offset; int version; } ;
struct drm_format_modifier {unsigned long long formats; scalar_t__ pad; scalar_t__ offset; int modifier; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
typedef int __u32 ;
struct TYPE_3__ {scalar_t__ (* format_mod_supported ) (struct drm_plane*,int ,int ) ;} ;


 scalar_t__ ALIGN (size_t,int) ;
 int BUILD_BUG_ON (int) ;
 int FORMAT_BLOB_CURRENT ;
 scalar_t__ IS_ERR (struct drm_property_blob*) ;
 scalar_t__ WARN_ON (int) ;
 int drm_object_attach_property (int *,int ,int ) ;
 struct drm_property_blob* drm_property_create_blob (struct drm_device*,size_t,int *) ;
 int formats_ptr (struct drm_format_modifier_blob*) ;
 int memcpy (int ,int *,size_t) ;
 struct drm_format_modifier* modifiers_ptr (struct drm_format_modifier_blob*) ;
 scalar_t__ stub1 (struct drm_plane*,int ,int ) ;

__attribute__((used)) static int create_in_format_blob(struct drm_device *dev, struct drm_plane *plane)
{
 const struct drm_mode_config *config = &dev->mode_config;
 struct drm_property_blob *blob;
 struct drm_format_modifier *mod;
 size_t blob_size, formats_size, modifiers_size;
 struct drm_format_modifier_blob *blob_data;
 unsigned int i, j;

 formats_size = sizeof(__u32) * plane->format_count;
 if (WARN_ON(!formats_size)) {

  return 0;
 }

 modifiers_size =
  sizeof(struct drm_format_modifier) * plane->modifier_count;

 blob_size = sizeof(struct drm_format_modifier_blob);



 BUILD_BUG_ON(sizeof(struct drm_format_modifier_blob) % 8);
 blob_size += ALIGN(formats_size, 8);
 blob_size += modifiers_size;

 blob = drm_property_create_blob(dev, blob_size, ((void*)0));
 if (IS_ERR(blob))
  return -1;

 blob_data = blob->data;
 blob_data->version = FORMAT_BLOB_CURRENT;
 blob_data->count_formats = plane->format_count;
 blob_data->formats_offset = sizeof(struct drm_format_modifier_blob);
 blob_data->count_modifiers = plane->modifier_count;

 blob_data->modifiers_offset =
  ALIGN(blob_data->formats_offset + formats_size, 8);

 memcpy(formats_ptr(blob_data), plane->format_types, formats_size);


 if (!plane->funcs->format_mod_supported)
  goto done;

 mod = modifiers_ptr(blob_data);
 for (i = 0; i < plane->modifier_count; i++) {
  for (j = 0; j < plane->format_count; j++) {
   if (plane->funcs->format_mod_supported(plane,
              plane->format_types[j],
              plane->modifiers[i])) {

    mod->formats |= 1ULL << j;
   }
  }

  mod->modifier = plane->modifiers[i];
  mod->offset = 0;
  mod->pad = 0;
  mod++;
 }

done:
 drm_object_attach_property(&plane->base, config->modifiers_property,
       blob->base.id);

 return 0;
}
