
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_flow_spec {int type; int size; } ;
typedef scalar_t__ u8 ;
struct ib_qp {int device; } ;
struct ib_flow_attr {int num_of_specs; int port; } ;
struct default_rules {scalar_t__ link_layer; int* mandatory_fields; scalar_t__* mandatory_not_fields; } ;
typedef int field_types ;
typedef int __u32 ;


 int ARRAY_SIZE (struct default_rules*) ;
 int IB_FLOW_SPEC_LAYER_MASK ;
 int IB_FLOW_SPEC_SUPPORT_LAYERS ;
 struct default_rules* default_table ;
 int memset (int **,int ,int) ;
 scalar_t__ rdma_port_get_link_layer (int ,int ) ;

__attribute__((used)) static int __mlx4_ib_default_rules_match(struct ib_qp *qp,
      struct ib_flow_attr *flow_attr)
{
 int i, j, k;
 void *ib_flow;
 const struct default_rules *pdefault_rules = default_table;
 u8 link_layer = rdma_port_get_link_layer(qp->device, flow_attr->port);

 for (i = 0; i < ARRAY_SIZE(default_table); i++, pdefault_rules++) {
  __u32 field_types[IB_FLOW_SPEC_SUPPORT_LAYERS];
  memset(&field_types, 0, sizeof(field_types));

  if (link_layer != pdefault_rules->link_layer)
   continue;

  ib_flow = flow_attr + 1;

  for (j = 0, k = 0; k < IB_FLOW_SPEC_SUPPORT_LAYERS &&
       j < flow_attr->num_of_specs; k++) {
   union ib_flow_spec *current_flow =
    (union ib_flow_spec *)ib_flow;


   if (((current_flow->type & IB_FLOW_SPEC_LAYER_MASK) ==
        (pdefault_rules->mandatory_fields[k] &
         IB_FLOW_SPEC_LAYER_MASK)) &&
       (current_flow->type !=
        pdefault_rules->mandatory_fields[k]))
    goto out;


   if (current_flow->type ==
       pdefault_rules->mandatory_fields[k]) {
    j++;
    ib_flow +=
     ((union ib_flow_spec *)ib_flow)->size;
   }
  }

  ib_flow = flow_attr + 1;
  for (j = 0; j < flow_attr->num_of_specs;
       j++, ib_flow += ((union ib_flow_spec *)ib_flow)->size)
   for (k = 0; k < IB_FLOW_SPEC_SUPPORT_LAYERS; k++)

    if (((union ib_flow_spec *)ib_flow)->type ==
        pdefault_rules->mandatory_not_fields[k])
     goto out;

  return i;
 }
out:
 return -1;
}
