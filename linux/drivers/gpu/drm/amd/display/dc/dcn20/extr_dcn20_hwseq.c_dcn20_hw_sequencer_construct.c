
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * init_pipes; int init_hw; int disable_vga; int * dsc_pg_control; int hubp_pg_control; int dpp_pg_control; int enable_power_gating_plane; int plane_atomic_disable; int disable_plane; int init_blank; int set_flip_control_gsl; int update_mpcc; int reset_hw_ctx_wrap; int setup_vupdate_interrupt; int enable_stream_gating; int disable_stream_gating; int init_vm_ctx; int init_sys_ctx; int disable_stream; int enable_stream; int program_dmdata_engine; int dmdata_status_done; int blank_pixel_data; int update_odm; int program_output_csc; int disable_writeback; int enable_writeback; int update_bandwidth; int prepare_bandwidth; int optimize_bandwidth; int pipe_control_lock_global; int pipe_control_lock; int apply_ctx_for_surface; int set_output_transfer_func; int set_input_transfer_func; int program_triplebuffer; int enable_stream_timing; int update_plane_addr; int unblank_stream; } ;
struct dc {TYPE_2__ hwss; TYPE_1__* ctx; } ;
struct TYPE_3__ {int dce_environment; } ;


 scalar_t__ IS_FPGA_MAXIMUS_DC (int ) ;
 int dcn10_hw_sequencer_construct (struct dc*) ;
 int dcn20_apply_ctx_for_surface ;
 int dcn20_blank_pixel_data ;
 int dcn20_disable_plane ;
 int dcn20_disable_stream ;
 int dcn20_disable_stream_gating ;
 int dcn20_disable_vga ;
 int dcn20_disable_writeback ;
 int dcn20_dmdata_status_done ;
 int dcn20_dpp_pg_control ;
 int * dcn20_dsc_pg_control ;
 int dcn20_enable_power_gating_plane ;
 int dcn20_enable_stream ;
 int dcn20_enable_stream_gating ;
 int dcn20_enable_stream_timing ;
 int dcn20_enable_writeback ;
 int dcn20_fpga_init_hw ;
 int dcn20_hubp_pg_control ;
 int dcn20_init_blank ;
 int dcn20_init_sys_ctx ;
 int dcn20_init_vm_ctx ;
 int dcn20_optimize_bandwidth ;
 int dcn20_pipe_control_lock ;
 int dcn20_pipe_control_lock_global ;
 int dcn20_plane_atomic_disable ;
 int dcn20_prepare_bandwidth ;
 int dcn20_program_dmdata_engine ;
 int dcn20_program_output_csc ;
 int dcn20_program_tripleBuffer ;
 int dcn20_reset_hw_ctx_wrap ;
 int dcn20_set_flip_control_gsl ;
 int dcn20_set_input_transfer_func ;
 int dcn20_set_output_transfer_func ;
 int dcn20_setup_vupdate_interrupt ;
 int dcn20_unblank_stream ;
 int dcn20_update_bandwidth ;
 int dcn20_update_mpcc ;
 int dcn20_update_odm ;
 int dcn20_update_plane_addr ;

void dcn20_hw_sequencer_construct(struct dc *dc)
{
 dcn10_hw_sequencer_construct(dc);
 dc->hwss.unblank_stream = dcn20_unblank_stream;
 dc->hwss.update_plane_addr = dcn20_update_plane_addr;
 dc->hwss.enable_stream_timing = dcn20_enable_stream_timing;
 dc->hwss.program_triplebuffer = dcn20_program_tripleBuffer;
 dc->hwss.set_input_transfer_func = dcn20_set_input_transfer_func;
 dc->hwss.set_output_transfer_func = dcn20_set_output_transfer_func;
 dc->hwss.apply_ctx_for_surface = dcn20_apply_ctx_for_surface;
 dc->hwss.pipe_control_lock = dcn20_pipe_control_lock;
 dc->hwss.pipe_control_lock_global = dcn20_pipe_control_lock_global;
 dc->hwss.optimize_bandwidth = dcn20_optimize_bandwidth;
 dc->hwss.prepare_bandwidth = dcn20_prepare_bandwidth;
 dc->hwss.update_bandwidth = dcn20_update_bandwidth;
 dc->hwss.enable_writeback = dcn20_enable_writeback;
 dc->hwss.disable_writeback = dcn20_disable_writeback;
 dc->hwss.program_output_csc = dcn20_program_output_csc;
 dc->hwss.update_odm = dcn20_update_odm;
 dc->hwss.blank_pixel_data = dcn20_blank_pixel_data;
 dc->hwss.dmdata_status_done = dcn20_dmdata_status_done;
 dc->hwss.program_dmdata_engine = dcn20_program_dmdata_engine;
 dc->hwss.enable_stream = dcn20_enable_stream;
 dc->hwss.disable_stream = dcn20_disable_stream;
 dc->hwss.init_sys_ctx = dcn20_init_sys_ctx;
 dc->hwss.init_vm_ctx = dcn20_init_vm_ctx;
 dc->hwss.disable_stream_gating = dcn20_disable_stream_gating;
 dc->hwss.enable_stream_gating = dcn20_enable_stream_gating;
 dc->hwss.setup_vupdate_interrupt = dcn20_setup_vupdate_interrupt;
 dc->hwss.reset_hw_ctx_wrap = dcn20_reset_hw_ctx_wrap;
 dc->hwss.update_mpcc = dcn20_update_mpcc;
 dc->hwss.set_flip_control_gsl = dcn20_set_flip_control_gsl;
 dc->hwss.init_blank = dcn20_init_blank;
 dc->hwss.disable_plane = dcn20_disable_plane;
 dc->hwss.plane_atomic_disable = dcn20_plane_atomic_disable;
 dc->hwss.enable_power_gating_plane = dcn20_enable_power_gating_plane;
 dc->hwss.dpp_pg_control = dcn20_dpp_pg_control;
 dc->hwss.hubp_pg_control = dcn20_hubp_pg_control;



 dc->hwss.dsc_pg_control = ((void*)0);

 dc->hwss.disable_vga = dcn20_disable_vga;

 if (IS_FPGA_MAXIMUS_DC(dc->ctx->dce_environment)) {
  dc->hwss.init_hw = dcn20_fpga_init_hw;
  dc->hwss.init_pipes = ((void*)0);
 }


}
