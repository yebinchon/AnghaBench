
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {TYPE_1__* dmem; } ;
struct nouveau_dmem_chunk {unsigned long pfn_first; int lock; int bitmap; int callocated; } ;
struct TYPE_2__ {int mutex; } ;


 unsigned long DMEM_CHUNK_NPAGES ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 unsigned long find_next_zero_bit (int ,unsigned long,unsigned long) ;
 int memset (unsigned long*,int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_dmem_chunk_alloc (struct nouveau_drm*) ;
 struct nouveau_dmem_chunk* nouveau_dmem_chunk_first_free_locked (struct nouveau_drm*) ;
 int set_bit (unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
nouveau_dmem_pages_alloc(struct nouveau_drm *drm,
    unsigned long npages,
    unsigned long *pages)
{
 struct nouveau_dmem_chunk *chunk;
 unsigned long c;
 int ret;

 memset(pages, 0xff, npages * sizeof(*pages));

 mutex_lock(&drm->dmem->mutex);
 for (c = 0; c < npages;) {
  unsigned long i;

  chunk = nouveau_dmem_chunk_first_free_locked(drm);
  if (chunk == ((void*)0)) {
   mutex_unlock(&drm->dmem->mutex);
   ret = nouveau_dmem_chunk_alloc(drm);
   if (ret) {
    if (c)
     return 0;
    return ret;
   }
   mutex_lock(&drm->dmem->mutex);
   continue;
  }

  spin_lock(&chunk->lock);
  i = find_first_zero_bit(chunk->bitmap, DMEM_CHUNK_NPAGES);
  while (i < DMEM_CHUNK_NPAGES && c < npages) {
   pages[c] = chunk->pfn_first + i;
   set_bit(i, chunk->bitmap);
   chunk->callocated++;
   c++;

   i = find_next_zero_bit(chunk->bitmap,
     DMEM_CHUNK_NPAGES, i);
  }
  spin_unlock(&chunk->lock);
 }
 mutex_unlock(&drm->dmem->mutex);

 return 0;
}
