
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_config {unsigned long seq_state; } ;
struct etmv4_drvdata {unsigned long nrseqstate; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t seq_state_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t size)
{
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 if (kstrtoul(buf, 16, &val))
  return -EINVAL;
 if (val >= drvdata->nrseqstate)
  return -EINVAL;

 config->seq_state = val;
 return size;
}
