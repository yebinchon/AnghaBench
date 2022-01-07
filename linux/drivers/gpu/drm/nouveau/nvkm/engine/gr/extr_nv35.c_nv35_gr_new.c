
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gr {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv20_gr_new_ (int *,struct nvkm_device*,int,struct nvkm_gr**) ;
 int nv35_gr ;

int
nv35_gr_new(struct nvkm_device *device, int index, struct nvkm_gr **pgr)
{
 return nv20_gr_new_(&nv35_gr, device, index, pgr);
}
