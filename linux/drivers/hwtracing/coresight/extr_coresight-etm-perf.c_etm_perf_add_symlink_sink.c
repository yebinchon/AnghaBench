
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {int kobj; } ;
struct TYPE_6__ {int mode; int name; } ;
struct TYPE_5__ {TYPE_2__ attr; int show; } ;
struct dev_ext_attribute {unsigned long* var; TYPE_1__ attr; } ;
struct coresight_device {scalar_t__ type; struct dev_ext_attribute* ea; struct device dev; } ;
struct TYPE_7__ {struct device* dev; } ;


 scalar_t__ CORESIGHT_DEV_TYPE_LINKSINK ;
 scalar_t__ CORESIGHT_DEV_TYPE_SINK ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 char* dev_name (struct device*) ;
 int devm_kstrdup (struct device*,char const*,int ) ;
 struct dev_ext_attribute* devm_kzalloc (struct device*,int,int ) ;
 int etm_perf_sink_name_show ;
 int etm_perf_up ;
 TYPE_4__ etm_pmu ;
 unsigned long hashlen_hash (int ) ;
 int hashlen_string (int *,char const*) ;
 int sysfs_add_file_to_group (int *,TYPE_2__*,char*) ;
 int sysfs_attr_init (TYPE_2__*) ;

int etm_perf_add_symlink_sink(struct coresight_device *csdev)
{
 int ret;
 unsigned long hash;
 const char *name;
 struct device *pmu_dev = etm_pmu.dev;
 struct device *dev = &csdev->dev;
 struct dev_ext_attribute *ea;

 if (csdev->type != CORESIGHT_DEV_TYPE_SINK &&
     csdev->type != CORESIGHT_DEV_TYPE_LINKSINK)
  return -EINVAL;

 if (csdev->ea != ((void*)0))
  return -EINVAL;

 if (!etm_perf_up)
  return -EPROBE_DEFER;

 ea = devm_kzalloc(dev, sizeof(*ea), GFP_KERNEL);
 if (!ea)
  return -ENOMEM;

 name = dev_name(dev);

 hash = hashlen_hash(hashlen_string(((void*)0), name));

 sysfs_attr_init(&ea->attr.attr);
 ea->attr.attr.name = devm_kstrdup(dev, name, GFP_KERNEL);
 if (!ea->attr.attr.name)
  return -ENOMEM;

 ea->attr.attr.mode = 0444;
 ea->attr.show = etm_perf_sink_name_show;
 ea->var = (unsigned long *)hash;

 ret = sysfs_add_file_to_group(&pmu_dev->kobj,
          &ea->attr.attr, "sinks");

 if (!ret)
  csdev->ea = ea;

 return ret;
}
