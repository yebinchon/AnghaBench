
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* fence; } ;
struct radeon_cs_parser {unsigned int nrelocs; unsigned int nchunks; TYPE_3__ const_ib; int rdev; TYPE_3__ ib; TYPE_5__* chunks_array; TYPE_5__* chunks; TYPE_4__* vm_bos; TYPE_4__* relocs; TYPE_5__* track; int validated; int ticket; } ;
struct TYPE_7__ {int base; } ;
struct radeon_bo {TYPE_2__ tbo; } ;
struct TYPE_10__ {TYPE_4__* kdata; } ;
struct TYPE_9__ {struct radeon_bo* robj; } ;
struct TYPE_6__ {int base; } ;


 int cmp_size_smaller_first ;
 int drm_gem_object_put_unlocked (int *) ;
 int kfree (TYPE_5__*) ;
 int kvfree (TYPE_4__*) ;
 int list_sort (int *,int *,int ) ;
 int radeon_ib_free (int ,TYPE_3__*) ;
 int ttm_eu_backoff_reservation (int *,int *) ;
 int ttm_eu_fence_buffer_objects (int *,int *,int *) ;

__attribute__((used)) static void radeon_cs_parser_fini(struct radeon_cs_parser *parser, int error, bool backoff)
{
 unsigned i;

 if (!error) {
  list_sort(((void*)0), &parser->validated, cmp_size_smaller_first);

  ttm_eu_fence_buffer_objects(&parser->ticket,
         &parser->validated,
         &parser->ib.fence->base);
 } else if (backoff) {
  ttm_eu_backoff_reservation(&parser->ticket,
        &parser->validated);
 }

 if (parser->relocs != ((void*)0)) {
  for (i = 0; i < parser->nrelocs; i++) {
   struct radeon_bo *bo = parser->relocs[i].robj;
   if (bo == ((void*)0))
    continue;

   drm_gem_object_put_unlocked(&bo->tbo.base);
  }
 }
 kfree(parser->track);
 kvfree(parser->relocs);
 kvfree(parser->vm_bos);
 for (i = 0; i < parser->nchunks; i++)
  kvfree(parser->chunks[i].kdata);
 kfree(parser->chunks);
 kfree(parser->chunks_array);
 radeon_ib_free(parser->rdev, &parser->ib);
 radeon_ib_free(parser->rdev, &parser->const_ib);
}
