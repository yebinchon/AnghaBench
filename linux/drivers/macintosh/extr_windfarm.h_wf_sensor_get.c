
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_sensor {TYPE_1__* ops; } ;
typedef int s32 ;
struct TYPE_2__ {int (* get_value ) (struct wf_sensor*,int *) ;} ;


 int stub1 (struct wf_sensor*,int *) ;

__attribute__((used)) static inline int wf_sensor_get(struct wf_sensor *sr, s32 *val)
{
 return sr->ops->get_value(sr, val);
}
