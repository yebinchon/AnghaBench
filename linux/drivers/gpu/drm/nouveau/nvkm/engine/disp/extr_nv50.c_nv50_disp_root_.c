
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_disp_oclass {int dummy; } ;
struct nvkm_disp {int dummy; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
struct TYPE_3__ {struct nvkm_disp_oclass const* root; } ;


 TYPE_2__* nv50_disp (struct nvkm_disp*) ;

__attribute__((used)) static const struct nvkm_disp_oclass *
nv50_disp_root_(struct nvkm_disp *base)
{
 return nv50_disp(base)->func->root;
}
