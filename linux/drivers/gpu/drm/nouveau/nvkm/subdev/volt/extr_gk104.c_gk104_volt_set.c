
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct nvkm_volt {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
struct nvbios_volt {int pwm_freq; int base; int pwm_range; } ;
struct TYPE_4__ {struct nvbios_volt bios; } ;


 int DIV_ROUND_UP (int,int ) ;
 TYPE_2__* gk104_volt (struct nvkm_volt*) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static int
gk104_volt_set(struct nvkm_volt *base, u32 uv)
{
 struct nvbios_volt *bios = &gk104_volt(base)->bios;
 struct nvkm_device *device = base->subdev.device;
 u32 div, duty;


 div = 27648000 / bios->pwm_freq;
 duty = DIV_ROUND_UP((uv - bios->base) * div, bios->pwm_range);

 nvkm_wr32(device, 0x20340, div);
 nvkm_wr32(device, 0x20344, 0x80000000 | duty);

 return 0;
}
