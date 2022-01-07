
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {struct omap_dss_device* next; } ;


 struct omap_dss_device* omapdss_device_get (struct omap_dss_device*) ;

struct omap_dss_device *omapdss_display_get(struct omap_dss_device *output)
{
 while (output->next)
  output = output->next;

 return omapdss_device_get(output);
}
