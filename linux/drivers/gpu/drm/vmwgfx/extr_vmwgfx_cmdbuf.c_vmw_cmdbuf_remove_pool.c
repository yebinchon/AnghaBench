
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmw_cmdbuf_man {int has_pool; int handle; int map; int size; TYPE_3__* dev_priv; int * cmd_space; int map_obj; scalar_t__ using_mob; int default_size; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int HZ ;
 int VMW_CMDBUF_INLINE_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int ttm_bo_kunmap (int *) ;
 int ttm_bo_put (int *) ;
 int vmw_cmdbuf_idle (struct vmw_cmdbuf_man*,int,int) ;

void vmw_cmdbuf_remove_pool(struct vmw_cmdbuf_man *man)
{
 if (!man->has_pool)
  return;

 man->has_pool = 0;
 man->default_size = VMW_CMDBUF_INLINE_SIZE;
 (void) vmw_cmdbuf_idle(man, 0, 10*HZ);
 if (man->using_mob) {
  (void) ttm_bo_kunmap(&man->map_obj);
  ttm_bo_put(man->cmd_space);
  man->cmd_space = ((void*)0);
 } else {
  dma_free_coherent(&man->dev_priv->dev->pdev->dev,
      man->size, man->map, man->handle);
 }
}
