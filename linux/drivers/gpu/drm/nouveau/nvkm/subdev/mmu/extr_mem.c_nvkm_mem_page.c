
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_memory {int dummy; } ;


 int PAGE_SHIFT ;

__attribute__((used)) static u8
nvkm_mem_page(struct nvkm_memory *memory)
{
 return PAGE_SHIFT;
}
