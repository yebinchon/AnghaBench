
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int (* set_sdram_scrub_rate ) (struct mem_ctl_info*,unsigned long) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int EDAC_MC ;
 size_t EINVAL ;
 int KERN_WARNING ;
 int edac_printk (int ,int ,char*,unsigned long) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int stub1 (struct mem_ctl_info*,unsigned long) ;
 struct mem_ctl_info* to_mci (struct device*) ;

__attribute__((used)) static ssize_t mci_sdram_scrub_rate_store(struct device *dev,
       struct device_attribute *mattr,
       const char *data, size_t count)
{
 struct mem_ctl_info *mci = to_mci(dev);
 unsigned long bandwidth = 0;
 int new_bw = 0;

 if (kstrtoul(data, 10, &bandwidth) < 0)
  return -EINVAL;

 new_bw = mci->set_sdram_scrub_rate(mci, bandwidth);
 if (new_bw < 0) {
  edac_printk(KERN_WARNING, EDAC_MC,
       "Error setting scrub rate to: %lu\n", bandwidth);
  return -EINVAL;
 }

 return count;
}
