
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct vmw_fifo_state {int* dynamic_buffer; int* static_buffer; } ;


 int SVGA_FIFO_RESERVED ;
 int mb () ;
 int memcpy (int *,int*,int) ;
 int vmw_mmio_write (int,int *) ;

__attribute__((used)) static void vmw_fifo_res_copy(struct vmw_fifo_state *fifo_state,
         u32 *fifo_mem,
         uint32_t next_cmd,
         uint32_t max, uint32_t min, uint32_t bytes)
{
 uint32_t chunk_size = max - next_cmd;
 uint32_t rest;
 uint32_t *buffer = (fifo_state->dynamic_buffer != ((void*)0)) ?
     fifo_state->dynamic_buffer : fifo_state->static_buffer;

 if (bytes < chunk_size)
  chunk_size = bytes;

 vmw_mmio_write(bytes, fifo_mem + SVGA_FIFO_RESERVED);
 mb();
 memcpy(fifo_mem + (next_cmd >> 2), buffer, chunk_size);
 rest = bytes - chunk_size;
 if (rest)
  memcpy(fifo_mem + (min >> 2), buffer + (chunk_size >> 2), rest);
}
