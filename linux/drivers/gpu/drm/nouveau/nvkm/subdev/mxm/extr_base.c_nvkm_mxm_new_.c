
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct nvkm_mxm {int action; int subdev; } ;
struct nvkm_device {int cfgopt; struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MXM_SANITISE_DCB ;
 struct nvkm_mxm* kzalloc (int,int ) ;
 scalar_t__ mxm_shadow (struct nvkm_mxm*,int) ;
 scalar_t__ mxm_table (struct nvkm_bios*,int*,int*) ;
 int mxms_foreach (struct nvkm_mxm*,int ,int *,int *) ;
 int mxms_version (struct nvkm_mxm*) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 scalar_t__ nvkm_boolopt (int ,char*,int) ;
 int nvkm_debug (int *,char*,...) ;
 int nvkm_info (int *,char*,int,int) ;
 int nvkm_mxm ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int nvkm_warn (int *,char*) ;

int
nvkm_mxm_new_(struct nvkm_device *device, int index, struct nvkm_mxm **pmxm)
{
 struct nvkm_bios *bios = device->bios;
 struct nvkm_mxm *mxm;
 u8 ver, len;
 u16 data;

 if (!(mxm = *pmxm = kzalloc(sizeof(*mxm), GFP_KERNEL)))
  return -ENOMEM;

 nvkm_subdev_ctor(&nvkm_mxm, device, index, &mxm->subdev);

 data = mxm_table(bios, &ver, &len);
 if (!data || !(ver = nvbios_rd08(bios, data))) {
  nvkm_debug(&mxm->subdev, "no VBIOS data, nothing to do\n");
  return 0;
 }

 nvkm_info(&mxm->subdev, "BIOS version %d.%d\n", ver >> 4, ver & 0x0f);
 nvkm_debug(&mxm->subdev, "module flags: %02x\n",
     nvbios_rd08(bios, data + 0x01));
 nvkm_debug(&mxm->subdev, "config flags: %02x\n",
     nvbios_rd08(bios, data + 0x02));

 if (mxm_shadow(mxm, ver)) {
  nvkm_warn(&mxm->subdev, "failed to locate valid SIS\n");
  return 0;

 }

 nvkm_debug(&mxm->subdev, "MXMS Version %d.%d\n",
     mxms_version(mxm) >> 8, mxms_version(mxm) & 0xff);
 mxms_foreach(mxm, 0, ((void*)0), ((void*)0));

 if (nvkm_boolopt(device->cfgopt, "NvMXMDCB", 1))
  mxm->action |= MXM_SANITISE_DCB;
 return 0;
}
