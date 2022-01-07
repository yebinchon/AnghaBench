
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct TYPE_5__ {unsigned long long model; unsigned long long revision; unsigned long long features; unsigned long long minor_features0; unsigned long long minor_features1; unsigned long long minor_features2; unsigned long long minor_features3; unsigned long long minor_features4; unsigned long long minor_features5; unsigned long long minor_features6; unsigned long long minor_features7; unsigned long long minor_features8; unsigned long long minor_features9; unsigned long long minor_features10; unsigned long long minor_features11; unsigned long long stream_count; unsigned long long register_max; unsigned long long thread_count; unsigned long long vertex_cache_size; unsigned long long shader_core_count; unsigned long long pixel_pipes; unsigned long long vertex_output_buffer_size; unsigned long long buffer_size; unsigned long long instruction_count; unsigned long long num_constants; unsigned long long varyings_count; } ;
struct etnaviv_gpu {int dev; TYPE_2__ identity; TYPE_1__* drm; } ;
struct etnaviv_drm_private {TYPE_3__* mmu_global; } ;
struct TYPE_6__ {int version; } ;
struct TYPE_4__ {struct etnaviv_drm_private* dev_private; } ;


 int DBG (char*,int ,int) ;
 int EINVAL ;
 int ETNAVIV_IOMMU_V2 ;
 unsigned long long ETNAVIV_SOFTPIN_START_ADDRESS ;
 int dev_name (int ) ;

int etnaviv_gpu_get_param(struct etnaviv_gpu *gpu, u32 param, u64 *value)
{
 struct etnaviv_drm_private *priv = gpu->drm->dev_private;

 switch (param) {
 case 139:
  *value = gpu->identity.model;
  break;

 case 134:
  *value = gpu->identity.revision;
  break;

 case 153:
  *value = gpu->identity.features;
  break;

 case 152:
  *value = gpu->identity.minor_features0;
  break;

 case 148:
  *value = gpu->identity.minor_features1;
  break;

 case 147:
  *value = gpu->identity.minor_features2;
  break;

 case 146:
  *value = gpu->identity.minor_features3;
  break;

 case 145:
  *value = gpu->identity.minor_features4;
  break;

 case 144:
  *value = gpu->identity.minor_features5;
  break;

 case 143:
  *value = gpu->identity.minor_features6;
  break;

 case 142:
  *value = gpu->identity.minor_features7;
  break;

 case 141:
  *value = gpu->identity.minor_features8;
  break;

 case 151:
  *value = gpu->identity.minor_features9;
  break;

 case 150:
  *value = gpu->identity.minor_features10;
  break;

 case 149:
  *value = gpu->identity.minor_features11;
  break;

 case 132:
  *value = gpu->identity.stream_count;
  break;

 case 135:
  *value = gpu->identity.register_max;
  break;

 case 131:
  *value = gpu->identity.thread_count;
  break;

 case 130:
  *value = gpu->identity.vertex_cache_size;
  break;

 case 133:
  *value = gpu->identity.shader_core_count;
  break;

 case 136:
  *value = gpu->identity.pixel_pipes;
  break;

 case 129:
  *value = gpu->identity.vertex_output_buffer_size;
  break;

 case 154:
  *value = gpu->identity.buffer_size;
  break;

 case 140:
  *value = gpu->identity.instruction_count;
  break;

 case 138:
  *value = gpu->identity.num_constants;
  break;

 case 137:
  *value = gpu->identity.varyings_count;
  break;

 case 128:
  if (priv->mmu_global->version == ETNAVIV_IOMMU_V2)
   *value = ETNAVIV_SOFTPIN_START_ADDRESS;
  else
   *value = ~0ULL;
  break;

 default:
  DBG("%s: invalid param: %u", dev_name(gpu->dev), param);
  return -EINVAL;
 }

 return 0;
}
