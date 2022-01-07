
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bo; } ;
struct TYPE_6__ {TYPE_1__ tv; } ;
struct amdgpu_cs_parser {unsigned int num_post_deps; unsigned int nchunks; TYPE_2__ uf_entry; scalar_t__ job; TYPE_3__* chunks; scalar_t__ bo_list; TYPE_4__* ctx; int fence; TYPE_3__* post_deps; int validated; int ticket; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_7__ {int kdata; struct TYPE_7__* chain; int syncobj; } ;


 int amdgpu_bo_list_put (scalar_t__) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_ctx_put (TYPE_4__*) ;
 int amdgpu_job_free (scalar_t__) ;
 int dma_fence_put (int ) ;
 int drm_syncobj_put (int ) ;
 int kfree (TYPE_3__*) ;
 int kvfree (int ) ;
 int mutex_unlock (int *) ;
 int ttm_eu_backoff_reservation (int *,int *) ;
 struct amdgpu_bo* ttm_to_amdgpu_bo (scalar_t__) ;

__attribute__((used)) static void amdgpu_cs_parser_fini(struct amdgpu_cs_parser *parser, int error,
      bool backoff)
{
 unsigned i;

 if (error && backoff)
  ttm_eu_backoff_reservation(&parser->ticket,
        &parser->validated);

 for (i = 0; i < parser->num_post_deps; i++) {
  drm_syncobj_put(parser->post_deps[i].syncobj);
  kfree(parser->post_deps[i].chain);
 }
 kfree(parser->post_deps);

 dma_fence_put(parser->fence);

 if (parser->ctx) {
  mutex_unlock(&parser->ctx->lock);
  amdgpu_ctx_put(parser->ctx);
 }
 if (parser->bo_list)
  amdgpu_bo_list_put(parser->bo_list);

 for (i = 0; i < parser->nchunks; i++)
  kvfree(parser->chunks[i].kdata);
 kfree(parser->chunks);
 if (parser->job)
  amdgpu_job_free(parser->job);
 if (parser->uf_entry.tv.bo) {
  struct amdgpu_bo *uf = ttm_to_amdgpu_bo(parser->uf_entry.tv.bo);

  amdgpu_bo_unref(&uf);
 }
}
