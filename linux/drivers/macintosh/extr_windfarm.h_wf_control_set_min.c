
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_control {TYPE_1__* ops; } ;
typedef int s32 ;
struct TYPE_2__ {int (* set_value ) (struct wf_control*,int ) ;int (* get_min ) (struct wf_control*) ;} ;


 int stub1 (struct wf_control*) ;
 int stub2 (struct wf_control*,int ) ;

__attribute__((used)) static inline int wf_control_set_min(struct wf_control *ct)
{
 s32 vmin = ct->ops->get_min(ct);
 return ct->ops->set_value(ct, vmin);
}
