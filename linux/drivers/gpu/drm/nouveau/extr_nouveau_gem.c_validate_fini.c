
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct validate_op {int ticket; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_channel {int dummy; } ;
struct drm_nouveau_gem_pushbuf_bo {int dummy; } ;


 int validate_fini_no_ticket (struct validate_op*,struct nouveau_channel*,struct nouveau_fence*,struct drm_nouveau_gem_pushbuf_bo*) ;
 int ww_acquire_fini (int *) ;

__attribute__((used)) static void
validate_fini(struct validate_op *op, struct nouveau_channel *chan,
       struct nouveau_fence *fence,
       struct drm_nouveau_gem_pushbuf_bo *pbbo)
{
 validate_fini_no_ticket(op, chan, fence, pbbo);
 ww_acquire_fini(&op->ticket);
}
