
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_therm {TYPE_2__ subdev; } ;
struct TYPE_3__ {int crystal; } ;



__attribute__((used)) static int
gm107_fan_pwm_clock(struct nvkm_therm *therm, int line)
{
 return therm->subdev.device->crystal * 1000;
}
