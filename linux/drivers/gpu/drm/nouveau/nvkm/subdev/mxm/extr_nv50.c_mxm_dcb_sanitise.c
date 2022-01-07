
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_mxm {struct nvkm_subdev subdev; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_2__ {struct nvkm_bios* bios; } ;


 int dcb_outp_foreach (struct nvkm_bios*,struct nvkm_mxm*,int ) ;
 int dcb_table (struct nvkm_bios*,int*,int*,int*,int*) ;
 int mxm_dcb_sanitise_entry ;
 int mxm_show_unmatched ;
 int mxms_foreach (struct nvkm_mxm*,int,int ,int *) ;
 int nvkm_warn (struct nvkm_subdev*,char*) ;

__attribute__((used)) static void
mxm_dcb_sanitise(struct nvkm_mxm *mxm)
{
 struct nvkm_subdev *subdev = &mxm->subdev;
 struct nvkm_bios *bios = subdev->device->bios;
 u8 ver, hdr, cnt, len;
 u16 dcb = dcb_table(bios, &ver, &hdr, &cnt, &len);
 if (dcb == 0x0000 || (ver != 0x40 && ver != 0x41)) {
  nvkm_warn(subdev, "unsupported DCB version\n");
  return;
 }

 dcb_outp_foreach(bios, mxm, mxm_dcb_sanitise_entry);
 mxms_foreach(mxm, 0x01, mxm_show_unmatched, ((void*)0));
}
