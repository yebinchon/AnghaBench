
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_gpu_state {int dummy; } ;


 int memcpy (void*,void*,size_t) ;
 void* state_kcalloc (struct a6xx_gpu_state*,int,size_t) ;

void *state_kmemdup(struct a6xx_gpu_state *a6xx_state, void *src,
  size_t size)
{
 void *dst = state_kcalloc(a6xx_state, 1, size);

 if (dst)
  memcpy(dst, src, size);
 return dst;
}
