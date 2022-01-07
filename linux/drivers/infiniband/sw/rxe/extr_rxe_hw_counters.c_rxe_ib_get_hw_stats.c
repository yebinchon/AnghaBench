
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_dev {int * stats_counters; } ;
struct rdma_hw_stats {int * value; } ;
struct ib_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int atomic64_read (int *) ;
 int rxe_counter_name ;
 struct rxe_dev* to_rdev (struct ib_device*) ;

int rxe_ib_get_hw_stats(struct ib_device *ibdev,
   struct rdma_hw_stats *stats,
   u8 port, int index)
{
 struct rxe_dev *dev = to_rdev(ibdev);
 unsigned int cnt;

 if (!port || !stats)
  return -EINVAL;

 for (cnt = 0; cnt < ARRAY_SIZE(rxe_counter_name); cnt++)
  stats->value[cnt] = atomic64_read(&dev->stats_counters[cnt]);

 return ARRAY_SIZE(rxe_counter_name);
}
