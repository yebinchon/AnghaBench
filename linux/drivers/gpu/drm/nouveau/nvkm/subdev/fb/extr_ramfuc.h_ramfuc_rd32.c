
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ramfuc_reg {scalar_t__ sequence; int data; int addr; } ;
struct ramfuc {scalar_t__ sequence; TYPE_2__* fb; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int nvkm_rd32 (struct nvkm_device*,int ) ;

__attribute__((used)) static inline u32
ramfuc_rd32(struct ramfuc *ram, struct ramfuc_reg *reg)
{
 struct nvkm_device *device = ram->fb->subdev.device;
 if (reg->sequence != ram->sequence)
  reg->data = nvkm_rd32(device, reg->addr);
 return reg->data;
}
