
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvrdma_global_route {int traffic_class; int hop_limit; int sgid_index; int flow_label; int dgid; } ;
struct ib_global_route {int traffic_class; int hop_limit; int sgid_index; int flow_label; int dgid; } ;


 int pvrdma_gid_to_ib (int *,int *) ;

void pvrdma_global_route_to_ib(struct ib_global_route *dst,
          const struct pvrdma_global_route *src)
{
 pvrdma_gid_to_ib(&dst->dgid, &src->dgid);
 dst->flow_label = src->flow_label;
 dst->sgid_index = src->sgid_index;
 dst->hop_limit = src->hop_limit;
 dst->traffic_class = src->traffic_class;
}
