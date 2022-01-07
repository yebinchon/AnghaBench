
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int name; struct wf_ad7417_priv* priv; } ;
struct wf_ad7417_priv {int ref; } ;


 int kfree (int ) ;
 int kref_put (int *,int ) ;
 int wf_ad7417_release ;

__attribute__((used)) static void wf_ad7417_sensor_release(struct wf_sensor *sr)
{
 struct wf_ad7417_priv *pv = sr->priv;

 kfree(sr->name);
 kref_put(&pv->ref, wf_ad7417_release);
}
