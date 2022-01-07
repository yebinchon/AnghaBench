
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int kobj; } ;
struct TYPE_3__ {int attr; } ;
struct dev_ext_attribute {TYPE_1__ attr; } ;
struct coresight_device {scalar_t__ type; struct dev_ext_attribute* ea; } ;
struct TYPE_4__ {struct device* dev; } ;


 scalar_t__ CORESIGHT_DEV_TYPE_LINKSINK ;
 scalar_t__ CORESIGHT_DEV_TYPE_SINK ;
 TYPE_2__ etm_pmu ;
 int sysfs_remove_file_from_group (int *,int *,char*) ;

void etm_perf_del_symlink_sink(struct coresight_device *csdev)
{
 struct device *pmu_dev = etm_pmu.dev;
 struct dev_ext_attribute *ea = csdev->ea;

 if (csdev->type != CORESIGHT_DEV_TYPE_SINK &&
     csdev->type != CORESIGHT_DEV_TYPE_LINKSINK)
  return;

 if (!ea)
  return;

 sysfs_remove_file_from_group(&pmu_dev->kobj,
         &ea->attr.attr, "sinks");
 csdev->ea = ((void*)0);
}
