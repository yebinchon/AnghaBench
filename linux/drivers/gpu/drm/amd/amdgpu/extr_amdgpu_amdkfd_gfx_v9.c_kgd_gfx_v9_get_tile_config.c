
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tile_config {void* num_macro_tile_configs; int macro_tile_config_ptr; void* num_tile_configs; int tile_config_ptr; int gb_addr_config; } ;
struct kgd_dev {int dummy; } ;
struct TYPE_4__ {int macrotile_mode_array; int tile_mode_array; int gb_addr_config; } ;
struct TYPE_3__ {TYPE_2__ config; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 void* ARRAY_SIZE (int ) ;

int kgd_gfx_v9_get_tile_config(struct kgd_dev *kgd,
  struct tile_config *config)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 config->gb_addr_config = adev->gfx.config.gb_addr_config;

 config->tile_config_ptr = adev->gfx.config.tile_mode_array;
 config->num_tile_configs =
   ARRAY_SIZE(adev->gfx.config.tile_mode_array);
 config->macro_tile_config_ptr =
   adev->gfx.config.macrotile_mode_array;
 config->num_macro_tile_configs =
   ARRAY_SIZE(adev->gfx.config.macrotile_mode_array);

 return 0;
}
