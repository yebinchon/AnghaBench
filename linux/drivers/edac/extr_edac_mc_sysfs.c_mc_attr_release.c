
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int edac_dbg (int,char*,int ) ;
 int kfree (struct device*) ;

__attribute__((used)) static void mc_attr_release(struct device *dev)
{





 edac_dbg(1, "device %s released\n", dev_name(dev));
 kfree(dev);
}
