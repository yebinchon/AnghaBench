
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gfx_v8_0_hw_fini (void*) ;

__attribute__((used)) static int gfx_v8_0_suspend(void *handle)
{
 return gfx_v8_0_hw_fini(handle);
}
