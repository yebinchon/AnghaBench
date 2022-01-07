
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int dummy; } ;
struct ib_pma_portcounters {void* port_rcv_packets; void* port_xmit_packets; void* port_rcv_data; void* port_xmit_data; } ;
struct ib_mad {scalar_t__ data; } ;


 void* cpu_to_be32 (int ) ;
 int memset (scalar_t__,int ,int) ;
 int ocrdma_sysfs_rcv_data (struct ocrdma_dev*) ;
 int ocrdma_sysfs_rcv_pkts (struct ocrdma_dev*) ;
 int ocrdma_sysfs_xmit_data (struct ocrdma_dev*) ;
 int ocrdma_sysfs_xmit_pkts (struct ocrdma_dev*) ;
 int ocrdma_update_stats (struct ocrdma_dev*) ;

int ocrdma_pma_counters(struct ocrdma_dev *dev,
   struct ib_mad *out_mad)
{
 struct ib_pma_portcounters *pma_cnt;

 memset(out_mad->data, 0, sizeof out_mad->data);
 pma_cnt = (void *)(out_mad->data + 40);
 ocrdma_update_stats(dev);

 pma_cnt->port_xmit_data = cpu_to_be32(ocrdma_sysfs_xmit_data(dev));
 pma_cnt->port_rcv_data = cpu_to_be32(ocrdma_sysfs_rcv_data(dev));
 pma_cnt->port_xmit_packets = cpu_to_be32(ocrdma_sysfs_xmit_pkts(dev));
 pma_cnt->port_rcv_packets = cpu_to_be32(ocrdma_sysfs_rcv_pkts(dev));
 return 0;
}
