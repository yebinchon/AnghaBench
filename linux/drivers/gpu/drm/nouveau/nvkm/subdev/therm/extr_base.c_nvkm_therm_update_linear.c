
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_therm {TYPE_2__* fan; } ;
struct TYPE_3__ {int linear_max_temp; int linear_min_temp; } ;
struct TYPE_4__ {TYPE_1__ bios; } ;


 int nvkm_therm_compute_linear_duty (struct nvkm_therm*,int ,int ) ;

__attribute__((used)) static int
nvkm_therm_update_linear(struct nvkm_therm *therm)
{
 u8 min = therm->fan->bios.linear_min_temp;
 u8 max = therm->fan->bios.linear_max_temp;
 return nvkm_therm_compute_linear_duty(therm, min, max);
}
