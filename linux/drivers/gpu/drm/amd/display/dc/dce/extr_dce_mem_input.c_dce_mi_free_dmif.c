
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct mem_input {int dummy; } ;
struct TYPE_2__ {scalar_t__ single_head_rdreq_dmif_limit; } ;
struct dce_mem_input {TYPE_1__ wa; } ;


 int DMIF_BUFFERS_ALLOCATED ;
 int DMIF_BUFFERS_ALLOCATION_COMPLETED ;
 int DMIF_BUFFER_CONTROL ;
 int ENABLE ;
 int MC_HUB_RDREQ_DMIF_LIMIT ;
 scalar_t__ REG_GET (int ,int ,scalar_t__*) ;
 int REG_SET (int ,scalar_t__,int ,int ) ;
 int REG_UPDATE (int ,int ,scalar_t__) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 struct dce_mem_input* TO_DCE_MEM_INPUT (struct mem_input*) ;

__attribute__((used)) static void dce_mi_free_dmif(
  struct mem_input *mi,
  uint32_t total_stream_num)
{
 struct dce_mem_input *dce_mi = TO_DCE_MEM_INPUT(mi);
 uint32_t buffers_allocated;
 uint32_t dmif_buffer_control;

 dmif_buffer_control = REG_GET(DMIF_BUFFER_CONTROL,
   DMIF_BUFFERS_ALLOCATED, &buffers_allocated);

 if (buffers_allocated == 0)
  return;

 REG_SET(DMIF_BUFFER_CONTROL, dmif_buffer_control,
   DMIF_BUFFERS_ALLOCATED, 0);

 REG_WAIT(DMIF_BUFFER_CONTROL,
   DMIF_BUFFERS_ALLOCATION_COMPLETED, 1,
   10, 3500);

 if (dce_mi->wa.single_head_rdreq_dmif_limit) {
  uint32_t eanble = (total_stream_num > 1) ? 0 :
    dce_mi->wa.single_head_rdreq_dmif_limit;

  REG_UPDATE(MC_HUB_RDREQ_DMIF_LIMIT,
    ENABLE, eanble);
 }
}
