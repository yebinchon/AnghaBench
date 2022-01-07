
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_vma {int addr; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_8__ {int device; } ;
struct nvkm_secboot {TYPE_3__ subdev; TYPE_5__* acr; } ;
struct nvkm_gpuobj {int size; } ;
struct nvkm_falcon {TYPE_4__* owner; } ;
struct TYPE_6__ {struct nvkm_subdev subdev; } ;
struct gm200_secboot {int vmm; int inst; TYPE_1__ base; } ;
struct TYPE_10__ {TYPE_2__* func; } ;
struct TYPE_9__ {int index; } ;
struct TYPE_7__ {int (* load ) (TYPE_5__*,struct nvkm_falcon*,struct nvkm_gpuobj*,int ) ;} ;


 struct gm200_secboot* gm200_secboot (struct nvkm_secboot*) ;
 int nvkm_falcon_bind_context (struct nvkm_falcon*,int ) ;
 int nvkm_falcon_get (struct nvkm_falcon*,struct nvkm_subdev*) ;
 int nvkm_falcon_put (struct nvkm_falcon*,struct nvkm_subdev*) ;
 int nvkm_falcon_rd32 (struct nvkm_falcon*,int) ;
 int nvkm_falcon_reset (struct nvkm_falcon*) ;
 int nvkm_falcon_set_start_addr (struct nvkm_falcon*,int) ;
 int nvkm_falcon_start (struct nvkm_falcon*) ;
 int nvkm_falcon_wait_for_halt (struct nvkm_falcon*,int) ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int) ;
 int nvkm_mc_intr_mask (int ,int ,int) ;
 int nvkm_memory_map (struct nvkm_gpuobj*,int ,int ,struct nvkm_vma*,int *,int ) ;
 int nvkm_vmm_get (int ,int,int ,struct nvkm_vma**) ;
 int nvkm_vmm_put (int ,struct nvkm_vma**) ;
 int stub1 (TYPE_5__*,struct nvkm_falcon*,struct nvkm_gpuobj*,int ) ;

int
gm200_secboot_run_blob(struct nvkm_secboot *sb, struct nvkm_gpuobj *blob,
         struct nvkm_falcon *falcon)
{
 struct gm200_secboot *gsb = gm200_secboot(sb);
 struct nvkm_subdev *subdev = &gsb->base.subdev;
 struct nvkm_vma *vma = ((void*)0);
 u32 start_address;
 int ret;

 ret = nvkm_falcon_get(falcon, subdev);
 if (ret)
  return ret;


 ret = nvkm_vmm_get(gsb->vmm, 12, blob->size, &vma);
 if (ret) {
  nvkm_falcon_put(falcon, subdev);
  return ret;
 }

 ret = nvkm_memory_map(blob, 0, gsb->vmm, vma, ((void*)0), 0);
 if (ret)
  goto end;


 ret = nvkm_falcon_reset(falcon);
 if (ret)
  goto end;
 nvkm_falcon_bind_context(falcon, gsb->inst);


 ret = sb->acr->func->load(sb->acr, falcon, blob, vma->addr);
 if (ret < 0)
  goto end;

 start_address = ret;


 nvkm_mc_intr_mask(sb->subdev.device, falcon->owner->index, 0);


 nvkm_falcon_wr32(falcon, 0x040, 0xdeada5a5);


 nvkm_falcon_set_start_addr(falcon, start_address);
 nvkm_falcon_start(falcon);
 ret = nvkm_falcon_wait_for_halt(falcon, 100);
 if (ret)
  goto end;





 ret = nvkm_falcon_rd32(falcon, 0x040);

end:

 nvkm_mc_intr_mask(sb->subdev.device, falcon->owner->index, 1);


 nvkm_vmm_put(gsb->vmm, &vma);
 nvkm_falcon_put(falcon, subdev);

 return ret;
}
