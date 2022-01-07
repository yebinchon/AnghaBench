
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dummy; } ;
struct device {int dummy; } ;


 struct dss_device* dev_get_drvdata (struct device*) ;

struct dss_device *dss_get_device(struct device *dev)
{
 return dev_get_drvdata(dev);
}
