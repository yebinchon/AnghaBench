
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_devinit {int dummy; } ;
struct nv50_devinit {int dummy; } ;


 int gm200_devinit_preos (struct nv50_devinit*,int) ;
 struct nv50_devinit* nv50_devinit (struct nvkm_devinit*) ;

__attribute__((used)) static int
tu102_devinit_post(struct nvkm_devinit *base, bool post)
{
 struct nv50_devinit *init = nv50_devinit(base);
 gm200_devinit_preos(init, post);
 return 0;
}
