
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mem_input {int dummy; } ;
struct TYPE_2__ {int single_head_rdreq_dmif_limit; } ;
struct dce_mem_input {TYPE_1__ wa; } ;


 int DMIF_BUFFERS_ALLOCATED ;
 int DMIF_BUFFERS_ALLOCATION_COMPLETED ;
 int DMIF_BUFFER_CONTROL ;
 int DPG_PIPE_ARBITRATION_CONTROL1 ;
 int ENABLE ;
 int MC_HUB_RDREQ_DMIF_LIMIT ;
 int PIXEL_DURATION ;
 int REG_GET (int ,int ,int*) ;
 int REG_SET (int ,int,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int,int const,int) ;
 struct dce_mem_input* TO_DCE_MEM_INPUT (struct mem_input*) ;
 int const get_dmif_switch_time_us (int,int,int) ;

__attribute__((used)) static void dce_mi_allocate_dmif(
 struct mem_input *mi,
 uint32_t h_total,
 uint32_t v_total,
 uint32_t pix_clk_khz,
 uint32_t total_stream_num)
{
 struct dce_mem_input *dce_mi = TO_DCE_MEM_INPUT(mi);
 const uint32_t retry_delay = 10;
 uint32_t retry_count = get_dmif_switch_time_us(
   h_total,
   v_total,
   pix_clk_khz) / retry_delay;

 uint32_t pix_dur;
 uint32_t buffers_allocated;
 uint32_t dmif_buffer_control;

 dmif_buffer_control = REG_GET(DMIF_BUFFER_CONTROL,
   DMIF_BUFFERS_ALLOCATED, &buffers_allocated);

 if (buffers_allocated == 2)
  return;

 REG_SET(DMIF_BUFFER_CONTROL, dmif_buffer_control,
   DMIF_BUFFERS_ALLOCATED, 2);

 REG_WAIT(DMIF_BUFFER_CONTROL,
   DMIF_BUFFERS_ALLOCATION_COMPLETED, 1,
   retry_delay, retry_count);

 if (pix_clk_khz != 0) {
  pix_dur = 1000000000ULL / pix_clk_khz;

  REG_UPDATE(DPG_PIPE_ARBITRATION_CONTROL1,
   PIXEL_DURATION, pix_dur);
 }

 if (dce_mi->wa.single_head_rdreq_dmif_limit) {
  uint32_t eanble = (total_stream_num > 1) ? 0 :
    dce_mi->wa.single_head_rdreq_dmif_limit;

  REG_UPDATE(MC_HUB_RDREQ_DMIF_LIMIT,
    ENABLE, eanble);
 }
}
