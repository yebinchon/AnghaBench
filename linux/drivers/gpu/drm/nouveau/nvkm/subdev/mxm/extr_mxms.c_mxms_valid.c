
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_mxm {int subdev; } ;


 int mxms_checksum (struct nvkm_mxm*) ;
 int * mxms_data (struct nvkm_mxm*) ;
 int mxms_version (struct nvkm_mxm*) ;
 int nvkm_debug (int *,char*) ;

bool
mxms_valid(struct nvkm_mxm *mxm)
{
 u8 *mxms = mxms_data(mxm);
 if (*(u32 *)mxms != 0x5f4d584d) {
  nvkm_debug(&mxm->subdev, "signature invalid\n");
  return 0;
 }

 if (!mxms_version(mxm) || !mxms_checksum(mxm))
  return 0;

 return 1;
}
