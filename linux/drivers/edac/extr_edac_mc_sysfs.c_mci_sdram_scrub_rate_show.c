
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int (* get_sdram_scrub_rate ) (struct mem_ctl_info*) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EDAC_MC ;
 int KERN_DEBUG ;
 int edac_printk (int ,int ,char*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct mem_ctl_info*) ;
 struct mem_ctl_info* to_mci (struct device*) ;

__attribute__((used)) static ssize_t mci_sdram_scrub_rate_show(struct device *dev,
      struct device_attribute *mattr,
      char *data)
{
 struct mem_ctl_info *mci = to_mci(dev);
 int bandwidth = 0;

 bandwidth = mci->get_sdram_scrub_rate(mci);
 if (bandwidth < 0) {
  edac_printk(KERN_DEBUG, EDAC_MC, "Error reading scrub rate\n");
  return bandwidth;
 }

 return sprintf(data, "%d\n", bandwidth);
}
