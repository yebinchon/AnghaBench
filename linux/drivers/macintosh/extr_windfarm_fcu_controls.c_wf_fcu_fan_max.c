
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_fcu_fan {int max; } ;
struct wf_control {struct wf_fcu_fan* priv; } ;
typedef int s32 ;



__attribute__((used)) static s32 wf_fcu_fan_max(struct wf_control *ct)
{
 struct wf_fcu_fan *fan = ct->priv;

 return fan->max;
}
