
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_control {TYPE_1__* ops; } ;
typedef int s32 ;
struct TYPE_2__ {int (* get_max ) (struct wf_control*) ;} ;


 int stub1 (struct wf_control*) ;

__attribute__((used)) static inline s32 wf_control_get_max(struct wf_control *ct)
{
 return ct->ops->get_max(ct);
}
