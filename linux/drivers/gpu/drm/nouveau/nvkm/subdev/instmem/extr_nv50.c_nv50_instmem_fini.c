
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_instmem {int dummy; } ;
struct TYPE_2__ {unsigned long long addr; } ;


 TYPE_1__* nv50_instmem (struct nvkm_instmem*) ;

__attribute__((used)) static void
nv50_instmem_fini(struct nvkm_instmem *base)
{
 nv50_instmem(base)->addr = ~0ULL;
}
