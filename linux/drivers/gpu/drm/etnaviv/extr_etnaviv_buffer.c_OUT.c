
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_cmdbuf {int user_size; int size; scalar_t__ vaddr; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline void OUT(struct etnaviv_cmdbuf *buffer, u32 data)
{
 u32 *vaddr = (u32 *)buffer->vaddr;

 BUG_ON(buffer->user_size >= buffer->size);

 vaddr[buffer->user_size / 4] = data;
 buffer->user_size += 4;
}
