
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __igt_reset_engine (void*,int) ;

__attribute__((used)) static int igt_reset_idle_engine(void *arg)
{
 return __igt_reset_engine(arg, 0);
}
