
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_mm_node {scalar_t__ length; scalar_t__ type; int fl_entry; int nl_entry; int offset; int heap; } ;
struct nvkm_mm {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ NVKM_MM_TYPE_NONE ;
 struct nvkm_mm_node* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct nvkm_mm_node *
region_head(struct nvkm_mm *mm, struct nvkm_mm_node *a, u32 size)
{
 struct nvkm_mm_node *b;

 if (a->length == size)
  return a;

 b = kmalloc(sizeof(*b), GFP_KERNEL);
 if (unlikely(b == ((void*)0)))
  return ((void*)0);

 b->offset = a->offset;
 b->length = size;
 b->heap = a->heap;
 b->type = a->type;
 a->offset += size;
 a->length -= size;
 list_add_tail(&b->nl_entry, &a->nl_entry);
 if (b->type == NVKM_MM_TYPE_NONE)
  list_add_tail(&b->fl_entry, &a->fl_entry);

 return b;
}
