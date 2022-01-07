
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* uint32_t ;
struct sg_table {TYPE_1__* sgl; } ;
struct TYPE_2__ {void* dma_length; void* length; int dma_address; } ;


 int GFP_KERNEL ;
 int kfree (struct sg_table*) ;
 struct sg_table* kmalloc (int,int ) ;
 scalar_t__ sg_alloc_table (struct sg_table*,int,int ) ;

__attribute__((used)) static struct sg_table *create_doorbell_sg(uint64_t addr, uint32_t size)
{
 struct sg_table *sg = kmalloc(sizeof(*sg), GFP_KERNEL);

 if (!sg)
  return ((void*)0);
 if (sg_alloc_table(sg, 1, GFP_KERNEL)) {
  kfree(sg);
  return ((void*)0);
 }
 sg->sgl->dma_address = addr;
 sg->sgl->length = size;



 return sg;
}
