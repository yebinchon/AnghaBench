
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct etnaviv_vram_mapping {scalar_t__ iova; } ;
struct etnaviv_cmdbuf {scalar_t__ suballoc_offset; } ;



u32 etnaviv_cmdbuf_get_va(struct etnaviv_cmdbuf *buf,
     struct etnaviv_vram_mapping *mapping)
{
 return mapping->iova + buf->suballoc_offset;
}
