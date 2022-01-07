
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int dummy; } ;
typedef int s32 ;


 int clamped ;

__attribute__((used)) static int clamp_get(struct wf_control *ct, s32 *value)
{
 *value = clamped;
 return 0;
}
