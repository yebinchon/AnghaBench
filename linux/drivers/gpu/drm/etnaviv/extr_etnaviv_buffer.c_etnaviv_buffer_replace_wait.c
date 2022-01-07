
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_cmdbuf {int * vaddr; } ;


 int mb () ;

__attribute__((used)) static void etnaviv_buffer_replace_wait(struct etnaviv_cmdbuf *buffer,
 unsigned int wl_offset, u32 cmd, u32 arg)
{
 u32 *lw = buffer->vaddr + wl_offset;

 lw[1] = arg;
 mb();
 lw[0] = cmd;
 mb();
}
