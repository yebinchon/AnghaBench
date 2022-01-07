
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_secboot {int dummy; } ;
struct nvkm_msgqueue {int fw_version; } ;
struct nvkm_falcon {struct nvkm_subdev* owner; } ;


 int EINVAL ;
 int msgqueue_0137bca5_new (struct nvkm_falcon*,struct nvkm_secboot const*,struct nvkm_msgqueue**) ;
 int msgqueue_0137c63d_new (struct nvkm_falcon*,struct nvkm_secboot const*,struct nvkm_msgqueue**) ;
 int msgqueue_0148cdec_new (struct nvkm_falcon*,struct nvkm_secboot const*,struct nvkm_msgqueue**) ;
 int nvkm_debug (struct nvkm_subdev const*,char*,int ) ;
 int nvkm_error (struct nvkm_subdev const*,char*,int ) ;

int
nvkm_msgqueue_new(u32 version, struct nvkm_falcon *falcon,
    const struct nvkm_secboot *sb, struct nvkm_msgqueue **queue)
{
 const struct nvkm_subdev *subdev = falcon->owner;
 int ret = -EINVAL;

 switch (version) {
 case 0x0137c63d:
  ret = msgqueue_0137c63d_new(falcon, sb, queue);
  break;
 case 0x0137bca5:
  ret = msgqueue_0137bca5_new(falcon, sb, queue);
  break;
 case 0x0148cdec:
 case 0x015ccf3e:
 case 0x0167d263:
  ret = msgqueue_0148cdec_new(falcon, sb, queue);
  break;
 default:
  nvkm_error(subdev, "unhandled firmware version 0x%08x\n",
      version);
  break;
 }

 if (ret == 0) {
  nvkm_debug(subdev, "firmware version: 0x%08x\n", version);
  (*queue)->fw_version = version;
 }

 return ret;
}
