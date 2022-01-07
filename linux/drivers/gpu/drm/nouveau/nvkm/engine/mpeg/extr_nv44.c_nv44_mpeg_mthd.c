
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nv40_mpeg_mthd_dma (struct nvkm_device*,int,int) ;

__attribute__((used)) static bool
nv44_mpeg_mthd(struct nvkm_device *device, u32 mthd, u32 data)
{
 switch (mthd) {
 case 0x190:
 case 0x1a0:
 case 0x1b0:
  return nv40_mpeg_mthd_dma(device, mthd, data);
 default:
  break;
 }
 return 0;
}
