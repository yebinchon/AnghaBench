
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {int nr_csrows; struct csrow_info** csrows; } ;
struct dimm_info {scalar_t__ nr_pages; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct csrow_info {int nr_channels; TYPE_1__** channels; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct dimm_info* dimm; } ;


 int PAGES_TO_MiB (int) ;
 int sprintf (char*,char*,int) ;
 struct mem_ctl_info* to_mci (struct device*) ;

__attribute__((used)) static ssize_t mci_size_mb_show(struct device *dev,
    struct device_attribute *mattr,
    char *data)
{
 struct mem_ctl_info *mci = to_mci(dev);
 int total_pages = 0, csrow_idx, j;

 for (csrow_idx = 0; csrow_idx < mci->nr_csrows; csrow_idx++) {
  struct csrow_info *csrow = mci->csrows[csrow_idx];

  for (j = 0; j < csrow->nr_channels; j++) {
   struct dimm_info *dimm = csrow->channels[j]->dimm;

   total_pages += dimm->nr_pages;
  }
 }

 return sprintf(data, "%u\n", PAGES_TO_MiB(total_pages));
}
