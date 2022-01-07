
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int device; } ;
struct nvkm_instmem {TYPE_1__ subdev; } ;


 int nvkm_wr32 (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
nv04_instmem_wr32(struct nvkm_instmem *imem, u32 addr, u32 data)
{
 nvkm_wr32(imem->subdev.device, 0x700000 + addr, data);
}
