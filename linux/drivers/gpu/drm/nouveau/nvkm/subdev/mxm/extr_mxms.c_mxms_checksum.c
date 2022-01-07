
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct nvkm_mxm {int subdev; } ;


 scalar_t__* mxms_data (struct nvkm_mxm*) ;
 scalar_t__ mxms_headerlen (struct nvkm_mxm*) ;
 scalar_t__ mxms_structlen (struct nvkm_mxm*) ;
 int nvkm_debug (int *,char*) ;

bool
mxms_checksum(struct nvkm_mxm *mxm)
{
 u16 size = mxms_headerlen(mxm) + mxms_structlen(mxm);
 u8 *mxms = mxms_data(mxm), sum = 0;
 while (size--)
  sum += *mxms++;
 if (sum) {
  nvkm_debug(&mxm->subdev, "checksum invalid\n");
  return 0;
 }
 return 1;
}
