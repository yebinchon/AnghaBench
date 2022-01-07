
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct komeda_kms_dev {int dummy; } ;
struct komeda_component {scalar_t__ id; } ;


 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;
 scalar_t__ KOMEDA_COMPONENT_LAYER0 ;

__attribute__((used)) static u32 get_plane_type(struct komeda_kms_dev *kms,
     struct komeda_component *c)
{
 bool is_primary = (c->id == KOMEDA_COMPONENT_LAYER0);

 return is_primary ? DRM_PLANE_TYPE_PRIMARY : DRM_PLANE_TYPE_OVERLAY;
}
