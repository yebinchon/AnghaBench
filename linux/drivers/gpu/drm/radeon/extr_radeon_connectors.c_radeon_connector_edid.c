
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector {struct edid* edid; } ;
struct edid {int dummy; } ;
struct drm_property_blob {int length; int data; } ;
struct drm_connector {struct drm_property_blob* edid_blob_ptr; } ;


 int GFP_KERNEL ;
 struct edid* kmemdup (int ,int ,int ) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

struct edid *radeon_connector_edid(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct drm_property_blob *edid_blob = connector->edid_blob_ptr;

 if (radeon_connector->edid) {
  return radeon_connector->edid;
 } else if (edid_blob) {
  struct edid *edid = kmemdup(edid_blob->data, edid_blob->length, GFP_KERNEL);
  if (edid)
   radeon_connector->edid = edid;
 }
 return radeon_connector->edid;
}
