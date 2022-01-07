
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvrdma_global_route {int traffic_class; int hop_limit; int sgid_index; int flow_label; int dgid; } ;
struct ib_global_route {int traffic_class; int hop_limit; int sgid_index; int flow_label; int dgid; } ;


 int ib_gid_to_pvrdma (int *,int *) ;

void ib_global_route_to_pvrdma(struct pvrdma_global_route *dst,
          const struct ib_global_route *src)
{
 ib_gid_to_pvrdma(&dst->dgid, &src->dgid);
 dst->flow_label = src->flow_label;
 dst->sgid_index = src->sgid_index;
 dst->hop_limit = src->hop_limit;
 dst->traffic_class = src->traffic_class;
}
