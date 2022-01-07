
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int name; } ;


 int strcmp (int ,char const*) ;
 scalar_t__ wf_get_sensor (struct wf_sensor*) ;

__attribute__((used)) static struct wf_sensor* pm121_register_sensor(struct wf_sensor *sensor,
            const char *match,
            struct wf_sensor **var)
{
 if (*var == ((void*)0) && !strcmp(sensor->name, match)) {
  if (wf_get_sensor(sensor) == 0)
   *var = sensor;
 }
 return *var;
}
