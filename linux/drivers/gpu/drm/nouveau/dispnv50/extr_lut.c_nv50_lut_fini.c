
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_lut {int * mem; } ;


 int ARRAY_SIZE (int *) ;
 int nvif_mem_fini (int *) ;

void
nv50_lut_fini(struct nv50_lut *lut)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(lut->mem); i++)
  nvif_mem_fini(&lut->mem[i]);
}
