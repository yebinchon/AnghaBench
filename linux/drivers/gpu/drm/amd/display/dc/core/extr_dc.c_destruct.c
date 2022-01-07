
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc {TYPE_1__* vm_helper; TYPE_1__* dcn_ip; TYPE_1__* dcn_soc; TYPE_1__* bw_dceip; TYPE_1__* bw_vbios; TYPE_1__* ctx; int * clk_mgr; int * current_state; } ;
struct TYPE_2__ {int perf_trace; int dc_bios; scalar_t__ created_bios; scalar_t__ gpio_service; } ;


 int dal_bios_parser_destroy (int *) ;
 int dal_gpio_service_destroy (scalar_t__*) ;
 int dc_destroy_clk_mgr (int *) ;
 int dc_destroy_resource_pool (struct dc*) ;
 int dc_perf_trace_destroy (int *) ;
 int dc_release_state (int *) ;
 int destroy_links (struct dc*) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void destruct(struct dc *dc)
{
 if (dc->current_state) {
  dc_release_state(dc->current_state);
  dc->current_state = ((void*)0);
 }

 destroy_links(dc);

 if (dc->clk_mgr) {
  dc_destroy_clk_mgr(dc->clk_mgr);
  dc->clk_mgr = ((void*)0);
 }

 dc_destroy_resource_pool(dc);

 if (dc->ctx->gpio_service)
  dal_gpio_service_destroy(&dc->ctx->gpio_service);

 if (dc->ctx->created_bios)
  dal_bios_parser_destroy(&dc->ctx->dc_bios);

 dc_perf_trace_destroy(&dc->ctx->perf_trace);

 kfree(dc->ctx);
 dc->ctx = ((void*)0);

 kfree(dc->bw_vbios);
 dc->bw_vbios = ((void*)0);

 kfree(dc->bw_dceip);
 dc->bw_dceip = ((void*)0);
}
