
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int start; } ;


 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

void mcb_release_mem(struct resource *mem)
{
 u32 size;

 size = resource_size(mem);
 release_mem_region(mem->start, size);
}
