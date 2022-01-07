
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;
struct wf_lm87_sensor {int dummy; } ;


 int kfree (struct wf_lm87_sensor*) ;
 struct wf_lm87_sensor* wf_to_lm87 (struct wf_sensor*) ;

__attribute__((used)) static void wf_lm87_release(struct wf_sensor *sr)
{
 struct wf_lm87_sensor *lm = wf_to_lm87(sr);

 kfree(lm);
}
