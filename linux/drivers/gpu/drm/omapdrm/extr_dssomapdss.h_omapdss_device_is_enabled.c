
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {scalar_t__ state; } ;


 scalar_t__ OMAP_DSS_DISPLAY_ACTIVE ;

__attribute__((used)) static inline bool omapdss_device_is_enabled(struct omap_dss_device *dssdev)
{
 return dssdev->state == OMAP_DSS_DISPLAY_ACTIVE;
}
