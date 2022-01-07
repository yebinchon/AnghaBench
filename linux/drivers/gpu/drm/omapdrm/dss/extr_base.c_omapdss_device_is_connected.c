
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dss; } ;



__attribute__((used)) static bool omapdss_device_is_connected(struct omap_dss_device *dssdev)
{
 return dssdev->dss;
}
