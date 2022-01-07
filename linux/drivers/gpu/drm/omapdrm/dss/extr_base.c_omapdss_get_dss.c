
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dummy; } ;


 struct dss_device* dss_device ;

struct dss_device *omapdss_get_dss(void)
{
 return dss_device;
}
