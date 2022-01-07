
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ww_acquire_ctx {int dummy; } ;
struct TYPE_4__ {TYPE_1__* resv; } ;
struct lima_bo {TYPE_2__ gem; } ;
struct TYPE_3__ {int lock; } ;


 int ww_acquire_fini (struct ww_acquire_ctx*) ;
 int ww_mutex_unlock (int *) ;

__attribute__((used)) static void lima_gem_unlock_bos(struct lima_bo **bos, u32 nr_bos,
    struct ww_acquire_ctx *ctx)
{
 int i;

 for (i = 0; i < nr_bos; i++)
  ww_mutex_unlock(&bos[i]->gem.resv->lock);
 ww_acquire_fini(ctx);
}
