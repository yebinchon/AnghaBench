
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct amdgpu_ttm_tt {int ttm; scalar_t__ usertask; } ;


 int kfree (struct amdgpu_ttm_tt*) ;
 int put_task_struct (scalar_t__) ;
 int ttm_dma_tt_fini (int *) ;

__attribute__((used)) static void amdgpu_ttm_backend_destroy(struct ttm_tt *ttm)
{
 struct amdgpu_ttm_tt *gtt = (void *)ttm;

 if (gtt->usertask)
  put_task_struct(gtt->usertask);

 ttm_dma_tt_fini(&gtt->ttm);
 kfree(gtt);
}
