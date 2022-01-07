
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_bo_global {int kobj; int bo_count; int device_list; int * swap_lru; int * dummy_read_page; TYPE_1__* mem_glob; int lru_lock; } ;
struct TYPE_3__ {struct ttm_bo_global* bo_glob; } ;


 int ENOMEM ;
 int GFP_DMA32 ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int TTM_MAX_BO_PRIORITY ;
 int __GFP_ZERO ;
 int * alloc_page (int) ;
 int atomic_set (int *,int ) ;
 int kobject_init_and_add (int *,int *,int ,char*) ;
 int kobject_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;
 struct ttm_bo_global ttm_bo_glob ;
 int ttm_bo_glob_kobj_type ;
 int ttm_bo_glob_use_count ;
 int ttm_get_kobj () ;
 int ttm_global_mutex ;
 TYPE_1__ ttm_mem_glob ;
 int ttm_mem_global_init (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_bo_global_init(void)
{
 struct ttm_bo_global *glob = &ttm_bo_glob;
 int ret = 0;
 unsigned i;

 mutex_lock(&ttm_global_mutex);
 if (++ttm_bo_glob_use_count > 1)
  goto out;

 ret = ttm_mem_global_init(&ttm_mem_glob);
 if (ret)
  goto out;

 spin_lock_init(&glob->lru_lock);
 glob->mem_glob = &ttm_mem_glob;
 glob->mem_glob->bo_glob = glob;
 glob->dummy_read_page = alloc_page(__GFP_ZERO | GFP_DMA32);

 if (unlikely(glob->dummy_read_page == ((void*)0))) {
  ret = -ENOMEM;
  goto out;
 }

 for (i = 0; i < TTM_MAX_BO_PRIORITY; ++i)
  INIT_LIST_HEAD(&glob->swap_lru[i]);
 INIT_LIST_HEAD(&glob->device_list);
 atomic_set(&glob->bo_count, 0);

 ret = kobject_init_and_add(
  &glob->kobj, &ttm_bo_glob_kobj_type, ttm_get_kobj(), "buffer_objects");
 if (unlikely(ret != 0))
  kobject_put(&glob->kobj);
out:
 mutex_unlock(&ttm_global_mutex);
 return ret;
}
