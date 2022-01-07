
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_subdev {TYPE_2__* device; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_pmuR {int init_addr_pmu; int args_addr_pmu; int data_size; int data_addr; int data_addr_pmu; int code_size; int code_addr; int code_addr_pmu; int boot_size; int boot_addr; int boot_addr_pmu; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct nv50_devinit {TYPE_1__ base; } ;
struct TYPE_4__ {struct nvkm_bios* bios; } ;


 int EINVAL ;
 int nvbios_pmuRm (struct nvkm_bios*,int ,struct nvbios_pmuR*) ;
 int pmu_code (struct nv50_devinit*,int ,int ,int ,int) ;
 int pmu_data (struct nv50_devinit*,int ,int ,int ) ;
 int pmu_exec (struct nv50_devinit*,int ) ;

__attribute__((used)) static int
pmu_load(struct nv50_devinit *init, u8 type, bool post,
  u32 *init_addr_pmu, u32 *args_addr_pmu)
{
 struct nvkm_subdev *subdev = &init->base.subdev;
 struct nvkm_bios *bios = subdev->device->bios;
 struct nvbios_pmuR pmu;

 if (!nvbios_pmuRm(bios, type, &pmu))
  return -EINVAL;

 if (!post)
  return 0;

 pmu_code(init, pmu.boot_addr_pmu, pmu.boot_addr, pmu.boot_size, 0);
 pmu_code(init, pmu.code_addr_pmu, pmu.code_addr, pmu.code_size, 1);
 pmu_data(init, pmu.data_addr_pmu, pmu.data_addr, pmu.data_size);

 if (init_addr_pmu) {
  *init_addr_pmu = pmu.init_addr_pmu;
  *args_addr_pmu = pmu.args_addr_pmu;
  return 0;
 }

 return pmu_exec(init, pmu.init_addr_pmu), 0;
}
