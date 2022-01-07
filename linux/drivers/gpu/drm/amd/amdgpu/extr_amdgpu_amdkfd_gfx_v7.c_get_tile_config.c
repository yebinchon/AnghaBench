
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tile_config {void* num_macro_tile_configs; int macro_tile_config_ptr; void* num_tile_configs; int tile_config_ptr; void* num_ranks; void* num_banks; int gb_addr_config; } ;
struct kgd_dev {int dummy; } ;
struct TYPE_3__ {int macrotile_mode_array; int tile_mode_array; int mc_arb_ramcfg; int gb_addr_config; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 void* ARRAY_SIZE (int ) ;
 int MC_ARB_RAMCFG ;
 int NOOFBANK ;
 int NOOFRANKS ;
 void* REG_GET_FIELD (int ,int ,int ) ;

__attribute__((used)) static int get_tile_config(struct kgd_dev *kgd,
  struct tile_config *config)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 config->gb_addr_config = adev->gfx.config.gb_addr_config;
 config->num_banks = REG_GET_FIELD(adev->gfx.config.mc_arb_ramcfg,
    MC_ARB_RAMCFG, NOOFBANK);
 config->num_ranks = REG_GET_FIELD(adev->gfx.config.mc_arb_ramcfg,
    MC_ARB_RAMCFG, NOOFRANKS);

 config->tile_config_ptr = adev->gfx.config.tile_mode_array;
 config->num_tile_configs =
   ARRAY_SIZE(adev->gfx.config.tile_mode_array);
 config->macro_tile_config_ptr =
   adev->gfx.config.macrotile_mode_array;
 config->num_macro_tile_configs =
   ARRAY_SIZE(adev->gfx.config.macrotile_mode_array);

 return 0;
}
