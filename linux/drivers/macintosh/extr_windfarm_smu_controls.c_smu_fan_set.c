
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int dummy; } ;
struct smu_fan_control {scalar_t__ min; scalar_t__ max; int reg; int fan_type; scalar_t__ value; } ;
typedef scalar_t__ s32 ;


 int smu_set_fan (int ,int ,scalar_t__) ;
 struct smu_fan_control* to_smu_fan (struct wf_control*) ;

__attribute__((used)) static int smu_fan_set(struct wf_control *ct, s32 value)
{
 struct smu_fan_control *fct = to_smu_fan(ct);

 if (value < fct->min)
  value = fct->min;
 if (value > fct->max)
  value = fct->max;
 fct->value = value;

 return smu_set_fan(fct->fan_type, fct->reg, value);
}
