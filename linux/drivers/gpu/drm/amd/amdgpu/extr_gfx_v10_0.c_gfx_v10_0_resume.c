
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gfx_v10_0_hw_init (void*) ;

__attribute__((used)) static int gfx_v10_0_resume(void *handle)
{
 return gfx_v10_0_hw_init(handle);
}
