
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ramfuc {int * fb; int memx; } ;


 int nvkm_memx_fini (int *,int) ;

__attribute__((used)) static inline int
ramfuc_exec(struct ramfuc *ram, bool exec)
{
 int ret = 0;
 if (ram->fb) {
  ret = nvkm_memx_fini(&ram->memx, exec);
  ram->fb = ((void*)0);
 }
 return ret;
}
