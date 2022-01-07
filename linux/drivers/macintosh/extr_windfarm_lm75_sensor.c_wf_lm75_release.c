
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;
struct wf_lm75_sensor {int dummy; } ;


 int kfree (struct wf_lm75_sensor*) ;
 struct wf_lm75_sensor* wf_to_lm75 (struct wf_sensor*) ;

__attribute__((used)) static void wf_lm75_release(struct wf_sensor *sr)
{
 struct wf_lm75_sensor *lm = wf_to_lm75(sr);

 kfree(lm);
}
