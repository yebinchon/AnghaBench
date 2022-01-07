
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_subdev {int device; } ;


 int nvkm_rd32 (int ,int) ;

__attribute__((used)) static u8
nvbios_ramcfg_strap(struct nvkm_subdev *subdev)
{
 return (nvkm_rd32(subdev->device, 0x101000) & 0x0000003c) >> 2;
}
