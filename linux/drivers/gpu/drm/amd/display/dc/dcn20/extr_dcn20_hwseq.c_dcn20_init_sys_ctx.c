
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int page_table_base_addr; int page_table_end_addr; int page_table_start_addr; } ;
struct TYPE_8__ {int agp_base; int agp_bot; int agp_top; int fb_base; int fb_offset; int fb_top; } ;
struct dcn_hubbub_phys_addr_config {int page_table_default_page_addr; TYPE_3__ gart_config; TYPE_1__ system_aperture; } ;
struct dce_hwseq {int dummy; } ;
struct TYPE_11__ {int page_table_base_addr; int page_table_end_addr; int page_table_start_addr; } ;
struct TYPE_9__ {int agp_base; int agp_bot; int agp_top; int fb_base; int fb_offset; int fb_top; } ;
struct dc_phy_addr_space_config {int page_table_default_page_addr; TYPE_4__ gart_config; TYPE_2__ system_aperture; } ;
struct dc {TYPE_6__* res_pool; } ;
struct TYPE_14__ {TYPE_5__* funcs; } ;
struct TYPE_13__ {TYPE_7__* hubbub; } ;
struct TYPE_12__ {int (* init_dchub_sys_ctx ) (TYPE_7__*,struct dcn_hubbub_phys_addr_config*) ;} ;


 int stub1 (TYPE_7__*,struct dcn_hubbub_phys_addr_config*) ;

__attribute__((used)) static int dcn20_init_sys_ctx(struct dce_hwseq *hws, struct dc *dc, struct dc_phy_addr_space_config *pa_config)
{
 struct dcn_hubbub_phys_addr_config config;

 config.system_aperture.fb_top = pa_config->system_aperture.fb_top;
 config.system_aperture.fb_offset = pa_config->system_aperture.fb_offset;
 config.system_aperture.fb_base = pa_config->system_aperture.fb_base;
 config.system_aperture.agp_top = pa_config->system_aperture.agp_top;
 config.system_aperture.agp_bot = pa_config->system_aperture.agp_bot;
 config.system_aperture.agp_base = pa_config->system_aperture.agp_base;
 config.gart_config.page_table_start_addr = pa_config->gart_config.page_table_start_addr;
 config.gart_config.page_table_end_addr = pa_config->gart_config.page_table_end_addr;
 config.gart_config.page_table_base_addr = pa_config->gart_config.page_table_base_addr;
 config.page_table_default_page_addr = pa_config->page_table_default_page_addr;

 return dc->res_pool->hubbub->funcs->init_dchub_sys_ctx(dc->res_pool->hubbub, &config);
}
