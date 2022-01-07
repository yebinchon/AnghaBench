
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mem_ctl_info {int nr_csrows; int n_layers; int start_time; int * ue_per_layer; int * ce_per_layer; TYPE_2__* layers; struct csrow_info** csrows; scalar_t__ ce_noinfo_count; scalar_t__ ue_noinfo_count; scalar_t__ ce_mc; scalar_t__ ue_mc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct csrow_info {int nr_channels; TYPE_1__** channels; scalar_t__ ce_count; scalar_t__ ue_count; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {scalar_t__ ce_count; } ;


 int jiffies ;
 int memset (int ,int ,int) ;
 struct mem_ctl_info* to_mci (struct device*) ;

__attribute__((used)) static ssize_t mci_reset_counters_store(struct device *dev,
     struct device_attribute *mattr,
     const char *data, size_t count)
{
 struct mem_ctl_info *mci = to_mci(dev);
 int cnt, row, chan, i;
 mci->ue_mc = 0;
 mci->ce_mc = 0;
 mci->ue_noinfo_count = 0;
 mci->ce_noinfo_count = 0;

 for (row = 0; row < mci->nr_csrows; row++) {
  struct csrow_info *ri = mci->csrows[row];

  ri->ue_count = 0;
  ri->ce_count = 0;

  for (chan = 0; chan < ri->nr_channels; chan++)
   ri->channels[chan]->ce_count = 0;
 }

 cnt = 1;
 for (i = 0; i < mci->n_layers; i++) {
  cnt *= mci->layers[i].size;
  memset(mci->ce_per_layer[i], 0, cnt * sizeof(u32));
  memset(mci->ue_per_layer[i], 0, cnt * sizeof(u32));
 }

 mci->start_time = jiffies;
 return count;
}
