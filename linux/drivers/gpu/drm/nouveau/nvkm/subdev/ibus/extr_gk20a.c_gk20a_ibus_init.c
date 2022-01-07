
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;


 int gk20a_ibus_init_ibus_ring (struct nvkm_subdev*) ;

__attribute__((used)) static int
gk20a_ibus_init(struct nvkm_subdev *ibus)
{
 gk20a_ibus_init_ibus_ring(ibus);
 return 0;
}
