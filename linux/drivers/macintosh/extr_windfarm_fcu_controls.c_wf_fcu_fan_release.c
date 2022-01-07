
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_fcu_fan {TYPE_1__* fcu_priv; } ;
struct wf_control {struct wf_fcu_fan* priv; } ;
struct TYPE_2__ {int ref; } ;


 int kfree (struct wf_fcu_fan*) ;
 int kref_put (int *,int ) ;
 int wf_fcu_release ;

__attribute__((used)) static void wf_fcu_fan_release(struct wf_control *ct)
{
 struct wf_fcu_fan *fan = ct->priv;

 kref_put(&fan->fcu_priv->ref, wf_fcu_release);
 kfree(fan);
}
