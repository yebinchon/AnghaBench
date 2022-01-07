
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvkm_mxm {int dummy; } ;


 int * mxms_data (struct nvkm_mxm*) ;

u16
mxms_structlen(struct nvkm_mxm *mxm)
{
 return *(u16 *)&mxms_data(mxm)[6];
}
