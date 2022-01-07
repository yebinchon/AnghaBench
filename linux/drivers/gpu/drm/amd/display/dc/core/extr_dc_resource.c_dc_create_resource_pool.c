
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int xtalin_clock_inKhz; int dchub_ref_clock_inKhz; int dccg_ref_clock_inKhz; } ;
struct resource_pool {TYPE_5__ ref_clocks; } ;
struct dc_init_data {int num_virtual_links; int asic_id; } ;
struct dc {TYPE_4__* ctx; } ;
typedef enum dce_version { ____Placeholder_dce_version } dce_version ;
struct TYPE_9__ {TYPE_3__* dc_bios; } ;
struct TYPE_6__ {int crystal_frequency; } ;
struct TYPE_7__ {TYPE_1__ pll_info; } ;
struct TYPE_8__ {TYPE_2__ fw_info; scalar_t__ fw_info_valid; } ;


 int ASSERT_CRITICAL (int) ;
 struct resource_pool* dce100_create_resource_pool (int ,struct dc*) ;
 struct resource_pool* dce110_create_resource_pool (int ,struct dc*,int ) ;
 struct resource_pool* dce112_create_resource_pool (int ,struct dc*) ;
 struct resource_pool* dce120_create_resource_pool (int ,struct dc*) ;
 struct resource_pool* dce80_create_resource_pool (int ,struct dc*) ;
 struct resource_pool* dce81_create_resource_pool (int ,struct dc*) ;
 struct resource_pool* dce83_create_resource_pool (int ,struct dc*) ;
 struct resource_pool* dcn10_create_resource_pool (struct dc_init_data const*,struct dc*) ;
 struct resource_pool* dcn20_create_resource_pool (struct dc_init_data const*,struct dc*) ;
 struct resource_pool* dcn21_create_resource_pool (struct dc_init_data const*,struct dc*) ;

struct resource_pool *dc_create_resource_pool(struct dc *dc,
           const struct dc_init_data *init_data,
           enum dce_version dc_version)
{
 struct resource_pool *res_pool = ((void*)0);

 switch (dc_version) {
 case 134:
  res_pool = dce80_create_resource_pool(
    init_data->num_virtual_links, dc);
  break;
 case 133:
  res_pool = dce81_create_resource_pool(
    init_data->num_virtual_links, dc);
  break;
 case 132:
  res_pool = dce83_create_resource_pool(
    init_data->num_virtual_links, dc);
  break;
 case 140:
  res_pool = dce100_create_resource_pool(
    init_data->num_virtual_links, dc);
  break;
 case 139:
  res_pool = dce110_create_resource_pool(
    init_data->num_virtual_links, dc,
    init_data->asic_id);
  break;
 case 138:
 case 137:
  res_pool = dce112_create_resource_pool(
    init_data->num_virtual_links, dc);
  break;
 case 136:
 case 135:
  res_pool = dce120_create_resource_pool(
    init_data->num_virtual_links, dc);
  break;
 default:
  break;
 }

 if (res_pool != ((void*)0)) {
  if (dc->ctx->dc_bios->fw_info_valid) {
   res_pool->ref_clocks.xtalin_clock_inKhz =
    dc->ctx->dc_bios->fw_info.pll_info.crystal_frequency;






   res_pool->ref_clocks.dccg_ref_clock_inKhz =
    res_pool->ref_clocks.xtalin_clock_inKhz;
   res_pool->ref_clocks.dchub_ref_clock_inKhz =
    res_pool->ref_clocks.xtalin_clock_inKhz;
  } else
   ASSERT_CRITICAL(0);
 }

 return res_pool;
}
