
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct msm_gpu {int dummy; } ;
struct a6xx_gpu_state_obj {int * data; struct a6xx_debugbus_block const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;
struct a6xx_debugbus_block {int count; int id; } ;


 int debugbus_read (struct msm_gpu*,int ,int,int *) ;
 int * state_kcalloc (struct a6xx_gpu_state*,int,int) ;

__attribute__((used)) static void a6xx_get_debugbus_block(struct msm_gpu *gpu,
  struct a6xx_gpu_state *a6xx_state,
  const struct a6xx_debugbus_block *block,
  struct a6xx_gpu_state_obj *obj)
{
 int i;
 u32 *ptr;

 obj->data = state_kcalloc(a6xx_state, block->count, sizeof(u64));
 if (!obj->data)
  return;

 obj->handle = block;

 for (ptr = obj->data, i = 0; i < block->count; i++)
  ptr += debugbus_read(gpu, block->id, i, ptr);
}
