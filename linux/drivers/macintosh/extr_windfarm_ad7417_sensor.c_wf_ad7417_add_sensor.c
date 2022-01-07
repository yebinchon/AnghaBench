
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_sensor_ops {int dummy; } ;
struct wf_ad7417_priv {int ref; TYPE_1__* sensors; int cpu; } ;
struct TYPE_2__ {struct wf_sensor_ops const* ops; struct wf_ad7417_priv* priv; int name; } ;


 int GFP_KERNEL ;
 int kasprintf (int ,char*,char const*,int ) ;
 int kref_get (int *) ;
 int wf_register_sensor (TYPE_1__*) ;

__attribute__((used)) static void wf_ad7417_add_sensor(struct wf_ad7417_priv *pv,
     int index, const char *name,
     const struct wf_sensor_ops *ops)
{
 pv->sensors[index].name = kasprintf(GFP_KERNEL, "%s-%d", name, pv->cpu);
 pv->sensors[index].priv = pv;
 pv->sensors[index].ops = ops;
 if (!wf_register_sensor(&pv->sensors[index]))
  kref_get(&pv->ref);
}
