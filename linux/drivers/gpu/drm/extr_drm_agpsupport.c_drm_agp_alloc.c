
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_device {TYPE_1__* agp; } ;
struct drm_agp_mem {unsigned long handle; unsigned long pages; int head; scalar_t__ bound; struct agp_memory* memory; } ;
struct drm_agp_buffer {int size; unsigned long handle; int physical; scalar_t__ type; } ;
struct agp_memory {int physical; scalar_t__ key; } ;
struct TYPE_2__ {int memory; int bridge; int acquired; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct agp_memory* agp_allocate_memory (int ,unsigned long,scalar_t__) ;
 int kfree (struct drm_agp_mem*) ;
 struct drm_agp_mem* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

int drm_agp_alloc(struct drm_device *dev, struct drm_agp_buffer *request)
{
 struct drm_agp_mem *entry;
 struct agp_memory *memory;
 unsigned long pages;
 u32 type;

 if (!dev->agp || !dev->agp->acquired)
  return -EINVAL;
 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 pages = (request->size + PAGE_SIZE - 1) / PAGE_SIZE;
 type = (u32) request->type;
 memory = agp_allocate_memory(dev->agp->bridge, pages, type);
 if (!memory) {
  kfree(entry);
  return -ENOMEM;
 }

 entry->handle = (unsigned long)memory->key + 1;
 entry->memory = memory;
 entry->bound = 0;
 entry->pages = pages;
 list_add(&entry->head, &dev->agp->memory);

 request->handle = entry->handle;
 request->physical = memory->physical;

 return 0;
}
