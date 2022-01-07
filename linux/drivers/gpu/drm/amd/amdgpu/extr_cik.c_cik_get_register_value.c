
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_5__ {int * macrotile_mode_array; int * tile_mode_array; int mc_arb_ramcfg; int gb_addr_config; TYPE_1__** rb_config; } ;
struct TYPE_6__ {TYPE_2__ config; } ;
struct amdgpu_device {TYPE_3__ gfx; int grbm_idx_mutex; } ;
struct TYPE_4__ {int raster_config_1; int raster_config; int user_rb_backend_disable; int rb_backend_disable; } ;


 int RREG32 (int) ;
 int amdgpu_gfx_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static uint32_t cik_get_register_value(struct amdgpu_device *adev,
           bool indexed, u32 se_num,
           u32 sh_num, u32 reg_offset)
{
 if (indexed) {
  uint32_t val;
  unsigned se_idx = (se_num == 0xffffffff) ? 0 : se_num;
  unsigned sh_idx = (sh_num == 0xffffffff) ? 0 : sh_num;

  switch (reg_offset) {
  case 181:
   return adev->gfx.config.rb_config[se_idx][sh_idx].rb_backend_disable;
  case 131:
   return adev->gfx.config.rb_config[se_idx][sh_idx].user_rb_backend_disable;
  case 129:
   return adev->gfx.config.rb_config[se_idx][sh_idx].raster_config;
  case 128:
   return adev->gfx.config.rb_config[se_idx][sh_idx].raster_config_1;
  }

  mutex_lock(&adev->grbm_idx_mutex);
  if (se_num != 0xffffffff || sh_num != 0xffffffff)
   amdgpu_gfx_select_se_sh(adev, se_num, sh_num, 0xffffffff);

  val = RREG32(reg_offset);

  if (se_num != 0xffffffff || sh_num != 0xffffffff)
   amdgpu_gfx_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
  mutex_unlock(&adev->grbm_idx_mutex);
  return val;
 } else {
  unsigned idx;

  switch (reg_offset) {
  case 180:
   return adev->gfx.config.gb_addr_config;
  case 130:
   return adev->gfx.config.mc_arb_ramcfg;
  case 163:
  case 162:
  case 151:
  case 140:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 161:
  case 160:
  case 159:
  case 158:
  case 157:
  case 156:
  case 155:
  case 154:
  case 153:
  case 152:
  case 150:
  case 149:
  case 148:
  case 147:
  case 146:
  case 145:
  case 144:
  case 143:
  case 142:
  case 141:
  case 139:
  case 138:
   idx = (reg_offset - 163);
   return adev->gfx.config.tile_mode_array[idx];
  case 179:
  case 178:
  case 171:
  case 170:
  case 169:
  case 168:
  case 167:
  case 166:
  case 165:
  case 164:
  case 177:
  case 176:
  case 175:
  case 174:
  case 173:
  case 172:
   idx = (reg_offset - 179);
   return adev->gfx.config.macrotile_mode_array[idx];
  default:
   return RREG32(reg_offset);
  }
 }
}
