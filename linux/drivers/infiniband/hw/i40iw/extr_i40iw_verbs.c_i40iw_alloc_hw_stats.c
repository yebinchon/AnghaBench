
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rdma_hw_stats {int dummy; } ;
struct ib_device {int dummy; } ;
struct i40iw_sc_dev {int is_pf; } ;
struct i40iw_device {struct i40iw_sc_dev sc_dev; } ;


 int ARRAY_SIZE (int ) ;
 int BUILD_BUG_ON (int) ;
 int I40IW_HW_STAT_INDEX_MAX_32 ;
 int I40IW_HW_STAT_INDEX_MAX_64 ;
 unsigned long RDMA_HW_STATS_DEFAULT_LIFESPAN ;
 int i40iw_hw_stat_names ;
 struct rdma_hw_stats* rdma_alloc_hw_stats_struct (int ,int,unsigned long) ;
 struct i40iw_device* to_iwdev (struct ib_device*) ;

__attribute__((used)) static struct rdma_hw_stats *i40iw_alloc_hw_stats(struct ib_device *ibdev,
        u8 port_num)
{
 struct i40iw_device *iwdev = to_iwdev(ibdev);
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 int num_counters = I40IW_HW_STAT_INDEX_MAX_32 +
  I40IW_HW_STAT_INDEX_MAX_64;
 unsigned long lifespan = RDMA_HW_STATS_DEFAULT_LIFESPAN;

 BUILD_BUG_ON(ARRAY_SIZE(i40iw_hw_stat_names) !=
       (I40IW_HW_STAT_INDEX_MAX_32 +
        I40IW_HW_STAT_INDEX_MAX_64));





 if (!dev->is_pf)
  lifespan = 1000;
 return rdma_alloc_hw_stats_struct(i40iw_hw_stat_names, num_counters,
       lifespan);
}
