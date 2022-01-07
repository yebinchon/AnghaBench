
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_msgqueue {int dummy; } ;
struct nvkm_falcon {TYPE_1__* owner; } ;
struct nvkm_device {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {int index; struct nvkm_device* device; } ;


 int NVKM_MSGQUEUE_CMDLINE_SIZE ;
 int memset (int *,int ,int) ;
 int nvkm_falcon_load_dmem (struct nvkm_falcon*,int *,int ,int,int ) ;
 int nvkm_falcon_start (struct nvkm_falcon*) ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int) ;
 int nvkm_mc_intr_mask (struct nvkm_device*,int ,int) ;
 int nvkm_msgqueue_reinit (struct nvkm_msgqueue*) ;
 int nvkm_msgqueue_write_cmdline (struct nvkm_msgqueue*,int *) ;

__attribute__((used)) static int
acr_ls_msgqueue_post_run(struct nvkm_msgqueue *queue,
    struct nvkm_falcon *falcon, u32 addr_args)
{
 struct nvkm_device *device = falcon->owner->device;
 u8 buf[NVKM_MSGQUEUE_CMDLINE_SIZE];

 memset(buf, 0, sizeof(buf));
 nvkm_msgqueue_write_cmdline(queue, buf);
 nvkm_falcon_load_dmem(falcon, buf, addr_args, sizeof(buf), 0);

 nvkm_msgqueue_reinit(queue);


 nvkm_falcon_wr32(falcon, 0x10, 0xff);
 nvkm_mc_intr_mask(device, falcon->owner->index, 1);


 nvkm_falcon_start(falcon);

 return 0;
}
