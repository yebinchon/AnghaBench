
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_therm {TYPE_1__* fan; } ;
struct TYPE_4__ {int min_duty; int max_duty; } ;
struct TYPE_3__ {TYPE_2__ bios; } ;



__attribute__((used)) static void
nvkm_therm_fan_safety_checks(struct nvkm_therm *therm)
{
 if (therm->fan->bios.min_duty > 100)
  therm->fan->bios.min_duty = 100;
 if (therm->fan->bios.max_duty > 100)
  therm->fan->bios.max_duty = 100;

 if (therm->fan->bios.min_duty > therm->fan->bios.max_duty)
  therm->fan->bios.min_duty = therm->fan->bios.max_duty;
}
