
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_msgqueue {int dummy; } ;



__attribute__((used)) static void
init_gen_cmdline(struct nvkm_msgqueue *queue, void *buf)
{
 struct {
  u32 freq_hz;
  u32 falc_trace_size;
  u32 falc_trace_dma_base;
  u32 falc_trace_dma_idx;
  bool secure_mode;
 } *args = buf;

 args->secure_mode = 0;
}
