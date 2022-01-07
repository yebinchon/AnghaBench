
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int dummy; } ;



int
nv50_head_cnt(struct nvkm_disp *disp, unsigned long *pmask)
{
 *pmask = 3;
 return 2;
}
