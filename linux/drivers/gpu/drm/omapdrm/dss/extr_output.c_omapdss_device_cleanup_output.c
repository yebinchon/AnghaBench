
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {scalar_t__ next; } ;


 int omapdss_device_put (scalar_t__) ;

void omapdss_device_cleanup_output(struct omap_dss_device *out)
{
 if (out->next)
  omapdss_device_put(out->next);
}
