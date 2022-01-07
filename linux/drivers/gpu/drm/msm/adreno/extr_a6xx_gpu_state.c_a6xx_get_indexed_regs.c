
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_gpu {int dummy; } ;
struct a6xx_indexed_registers {int count; int data; int addr; } ;
struct a6xx_gpu_state_obj {int * data; void const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;


 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int ) ;
 int * state_kcalloc (struct a6xx_gpu_state*,int,int) ;

__attribute__((used)) static void a6xx_get_indexed_regs(struct msm_gpu *gpu,
  struct a6xx_gpu_state *a6xx_state,
  const struct a6xx_indexed_registers *indexed,
  struct a6xx_gpu_state_obj *obj)
{
 int i;

 obj->handle = (const void *) indexed;
 obj->data = state_kcalloc(a6xx_state, indexed->count, sizeof(u32));
 if (!obj->data)
  return;


 gpu_write(gpu, indexed->addr, 0);


 for (i = 0; i < indexed->count; i++)
  obj->data[i] = gpu_read(gpu, indexed->data);
}
