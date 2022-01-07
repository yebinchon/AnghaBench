
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rdma_hw_stats {scalar_t__* value; } ;
struct ib_device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ rdma_counter_get_hwstat_value (struct ib_device*,int,int) ;
 int sprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static ssize_t print_hw_stat(struct ib_device *dev, int port_num,
        struct rdma_hw_stats *stats, int index, char *buf)
{
 u64 v = rdma_counter_get_hwstat_value(dev, port_num, index);

 return sprintf(buf, "%llu\n", stats->value[index] + v);
}
