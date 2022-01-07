
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_falcon {int dummy; } ;
struct gf100_gr_fuc {int size; int data; } ;


 int nvkm_falcon_load_dmem (struct nvkm_falcon*,int ,int,int ,int ) ;
 int nvkm_falcon_load_imem (struct nvkm_falcon*,int ,int,int ,int ,int ,int) ;

__attribute__((used)) static void
gf100_gr_init_fw(struct nvkm_falcon *falcon,
   struct gf100_gr_fuc *code, struct gf100_gr_fuc *data)
{
 nvkm_falcon_load_dmem(falcon, data->data, 0x0, data->size, 0);
 nvkm_falcon_load_imem(falcon, code->data, 0x0, code->size, 0, 0, 0);
}
