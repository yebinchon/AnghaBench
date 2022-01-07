
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_secboot {struct nvkm_subdev subdev; } ;
struct nvkm_sec2 {int falcon; int queue; } ;
struct nvkm_device {struct nvkm_sec2* sec2; } ;
struct nvkm_acr {size_t boot_falcon; } ;


 int acr_ls_msgqueue_post_run (int ,int ,int const) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int ) ;
 int * nvkm_secboot_falcon_name ;

int
acr_ls_sec2_post_run(const struct nvkm_acr *acr, const struct nvkm_secboot *sb)
{
 const struct nvkm_subdev *subdev = &sb->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvkm_sec2 *sec = device->sec2;

 const u32 addr_args = 0x01000000;
 int ret;

 ret = acr_ls_msgqueue_post_run(sec->queue, sec->falcon, addr_args);
 if (ret)
  return ret;

 nvkm_debug(&sb->subdev, "%s started\n",
     nvkm_secboot_falcon_name[acr->boot_falcon]);

 return 0;
}
