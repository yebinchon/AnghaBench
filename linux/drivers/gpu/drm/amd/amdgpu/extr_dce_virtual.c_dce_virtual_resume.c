
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dce_virtual_hw_init (void*) ;

__attribute__((used)) static int dce_virtual_resume(void *handle)
{
 return dce_virtual_hw_init(handle);
}
