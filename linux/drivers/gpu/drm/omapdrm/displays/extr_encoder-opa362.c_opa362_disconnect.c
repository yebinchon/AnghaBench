
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int next; } ;


 int omapdss_device_disconnect (struct omap_dss_device*,int ) ;

__attribute__((used)) static void opa362_disconnect(struct omap_dss_device *src,
         struct omap_dss_device *dst)
{
 omapdss_device_disconnect(dst, dst->next);
}
