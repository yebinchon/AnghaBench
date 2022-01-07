
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {scalar_t__ length; int data; } ;
struct drm_connector_state {struct drm_property_blob* hdr_output_metadata; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool
is_hdr_metadata_different(const struct drm_connector_state *old_state,
     const struct drm_connector_state *new_state)
{
 struct drm_property_blob *old_blob = old_state->hdr_output_metadata;
 struct drm_property_blob *new_blob = new_state->hdr_output_metadata;

 if (old_blob != new_blob) {
  if (old_blob && new_blob &&
      old_blob->length == new_blob->length)
   return memcmp(old_blob->data, new_blob->data,
          old_blob->length);

  return 1;
 }

 return 0;
}
