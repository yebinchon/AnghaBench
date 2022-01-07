
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct dc_link {struct amdgpu_dm_connector* priv; } ;
struct dc_context {int dummy; } ;
struct TYPE_2__ {int aux; } ;
struct amdgpu_dm_connector {TYPE_1__ dm_dp_aux; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ drm_dp_dpcd_read (int *,int ,int *,int ) ;

bool dm_helpers_dp_read_dpcd(
  struct dc_context *ctx,
  const struct dc_link *link,
  uint32_t address,
  uint8_t *data,
  uint32_t size)
{

 struct amdgpu_dm_connector *aconnector = link->priv;

 if (!aconnector) {
  DRM_ERROR("Failed to found connector for link!");
  return 0;
 }

 return drm_dp_dpcd_read(&aconnector->dm_dp_aux.aux, address,
   data, size) > 0;
}
