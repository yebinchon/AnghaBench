
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rdma_hw_stats {int num_counters; int * value; } ;
struct ib_device {int dummy; } ;
struct i40iw_dev_hw_stats {int dummy; } ;
struct i40iw_vsi_pestat {struct i40iw_dev_hw_stats hw_stats; } ;
struct i40iw_sc_dev {scalar_t__ is_pf; } ;
struct TYPE_2__ {struct i40iw_vsi_pestat* pestat; } ;
struct i40iw_device {TYPE_1__ vsi; struct i40iw_sc_dev sc_dev; } ;


 int ENOSYS ;
 int i40iw_hw_stats_read_all (struct i40iw_vsi_pestat*,struct i40iw_dev_hw_stats*) ;
 scalar_t__ i40iw_vchnl_vf_get_pe_stats (struct i40iw_sc_dev*,struct i40iw_dev_hw_stats*) ;
 int memcpy (int *,struct i40iw_dev_hw_stats*,int) ;
 struct i40iw_device* to_iwdev (struct ib_device*) ;

__attribute__((used)) static int i40iw_get_hw_stats(struct ib_device *ibdev,
         struct rdma_hw_stats *stats,
         u8 port_num, int index)
{
 struct i40iw_device *iwdev = to_iwdev(ibdev);
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 struct i40iw_vsi_pestat *devstat = iwdev->vsi.pestat;
 struct i40iw_dev_hw_stats *hw_stats = &devstat->hw_stats;

 if (dev->is_pf) {
  i40iw_hw_stats_read_all(devstat, &devstat->hw_stats);
 } else {
  if (i40iw_vchnl_vf_get_pe_stats(dev, &devstat->hw_stats))
   return -ENOSYS;
 }

 memcpy(&stats->value[0], hw_stats, sizeof(*hw_stats));

 return stats->num_counters;
}
