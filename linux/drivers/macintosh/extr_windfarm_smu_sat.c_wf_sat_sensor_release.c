
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;
struct wf_sat_sensor {struct wf_sat* sat; } ;
struct wf_sat {int ref; } ;


 int kfree (struct wf_sat_sensor*) ;
 int kref_put (int *,int ) ;
 int wf_sat_release ;
 struct wf_sat_sensor* wf_to_sat (struct wf_sensor*) ;

__attribute__((used)) static void wf_sat_sensor_release(struct wf_sensor *sr)
{
 struct wf_sat_sensor *sens = wf_to_sat(sr);
 struct wf_sat *sat = sens->sat;

 kfree(sens);
 kref_put(&sat->ref, wf_sat_release);
}
