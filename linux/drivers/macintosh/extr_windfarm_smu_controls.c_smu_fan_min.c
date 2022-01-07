
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int dummy; } ;
struct smu_fan_control {int min; } ;
typedef int s32 ;


 struct smu_fan_control* to_smu_fan (struct wf_control*) ;

__attribute__((used)) static s32 smu_fan_min(struct wf_control *ct)
{
 struct smu_fan_control *fct = to_smu_fan(ct);
 return fct->min;
}
