
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_disp {int dummy; } ;
struct nv50_disp {TYPE_1__* func; } ;
struct TYPE_2__ {int (* intr ) (struct nv50_disp*) ;} ;


 struct nv50_disp* nv50_disp (struct nvkm_disp*) ;
 int stub1 (struct nv50_disp*) ;

__attribute__((used)) static void
nv50_disp_intr_(struct nvkm_disp *base)
{
 struct nv50_disp *disp = nv50_disp(base);
 disp->func->intr(disp);
}
