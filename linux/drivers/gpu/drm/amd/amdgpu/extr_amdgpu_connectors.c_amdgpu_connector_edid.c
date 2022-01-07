
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;
struct drm_property_blob {int length; int data; } ;
struct drm_connector {struct drm_property_blob* edid_blob_ptr; } ;
struct amdgpu_connector {struct edid* edid; } ;


 int GFP_KERNEL ;
 struct edid* kmemdup (int ,int ,int ) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

struct edid *amdgpu_connector_edid(struct drm_connector *connector)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 struct drm_property_blob *edid_blob = connector->edid_blob_ptr;

 if (amdgpu_connector->edid) {
  return amdgpu_connector->edid;
 } else if (edid_blob) {
  struct edid *edid = kmemdup(edid_blob->data, edid_blob->length, GFP_KERNEL);
  if (edid)
   amdgpu_connector->edid = edid;
 }
 return amdgpu_connector->edid;
}
