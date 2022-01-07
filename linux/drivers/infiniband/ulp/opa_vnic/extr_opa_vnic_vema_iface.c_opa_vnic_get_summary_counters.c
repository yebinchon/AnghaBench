
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vstats ;
typedef int u64 ;
struct TYPE_9__ {int unicast; } ;
struct TYPE_10__ {int rx_bytes; int tx_bytes; int rx_packets; int tx_packets; int rx_errors; int tx_errors; } ;
struct opa_vnic_stats {TYPE_4__ tx_grp; TYPE_5__ netstats; } ;
struct TYPE_7__ {int vesw_id; } ;
struct TYPE_8__ {TYPE_2__ vesw; } ;
struct opa_vnic_adapter {int port_num; TYPE_3__ info; int vport_num; int stats_lock; int netdev; TYPE_1__* rn_ops; } ;
struct opa_veswport_summary_counters {void** reserved; void* tx_unicast; void* rx_bytes; void* tx_bytes; void* rx_packets; void* tx_packets; void* rx_errors; void* tx_errors; int veswport_num; void* vesw_id; void* vp_instance; } ;
typedef void* __be64 ;
struct TYPE_6__ {int (* ndo_get_stats64 ) (int ,TYPE_5__*) ;} ;


 void* cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int ) ;
 int memset (struct opa_vnic_stats*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ,TYPE_5__*) ;

void opa_vnic_get_summary_counters(struct opa_vnic_adapter *adapter,
       struct opa_veswport_summary_counters *cntrs)
{
 struct opa_vnic_stats vstats;
 __be64 *dst;
 u64 *src;

 memset(&vstats, 0, sizeof(vstats));
 spin_lock(&adapter->stats_lock);
 adapter->rn_ops->ndo_get_stats64(adapter->netdev, &vstats.netstats);
 spin_unlock(&adapter->stats_lock);

 cntrs->vp_instance = cpu_to_be16(adapter->vport_num);
 cntrs->vesw_id = cpu_to_be16(adapter->info.vesw.vesw_id);
 cntrs->veswport_num = cpu_to_be32(adapter->port_num);

 cntrs->tx_errors = cpu_to_be64(vstats.netstats.tx_errors);
 cntrs->rx_errors = cpu_to_be64(vstats.netstats.rx_errors);
 cntrs->tx_packets = cpu_to_be64(vstats.netstats.tx_packets);
 cntrs->rx_packets = cpu_to_be64(vstats.netstats.rx_packets);
 cntrs->tx_bytes = cpu_to_be64(vstats.netstats.tx_bytes);
 cntrs->rx_bytes = cpu_to_be64(vstats.netstats.rx_bytes);





 for (dst = &cntrs->tx_unicast, src = &vstats.tx_grp.unicast;
      dst < &cntrs->reserved[0]; dst++, src++) {
  *dst = cpu_to_be64(*src);
 }
}
