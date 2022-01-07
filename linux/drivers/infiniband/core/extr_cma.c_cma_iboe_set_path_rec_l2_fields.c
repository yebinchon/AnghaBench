
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int dst_dev_addr; int network; int bound_dev_if; int net; } ;
struct rdma_addr {TYPE_3__ dev_addr; } ;
struct rdma_route {TYPE_4__* path_rec; struct rdma_addr addr; } ;
struct TYPE_5__ {int port_num; int device; struct rdma_route route; } ;
struct rdma_id_private {int gid_type; TYPE_1__ id; } ;
struct net_device {int dummy; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_6__ {int route_resolved; } ;
struct TYPE_8__ {TYPE_2__ roce; int rec_type; } ;


 int IB_GID_TYPE_ROCE ;
 int cma_route_gid_type (int ,unsigned long,int ) ;
 struct net_device* dev_get_by_index (int ,int ) ;
 int ib_network_to_gid_type (int ) ;
 unsigned long roce_gid_type_mask_support (int ,int ) ;
 int sa_conv_gid_to_pathrec_type (int) ;
 int sa_path_set_dmac (TYPE_4__*,int ) ;

__attribute__((used)) static struct net_device *
cma_iboe_set_path_rec_l2_fields(struct rdma_id_private *id_priv)
{
 struct rdma_route *route = &id_priv->id.route;
 enum ib_gid_type gid_type = IB_GID_TYPE_ROCE;
 struct rdma_addr *addr = &route->addr;
 unsigned long supported_gids;
 struct net_device *ndev;

 if (!addr->dev_addr.bound_dev_if)
  return ((void*)0);

 ndev = dev_get_by_index(addr->dev_addr.net,
    addr->dev_addr.bound_dev_if);
 if (!ndev)
  return ((void*)0);

 supported_gids = roce_gid_type_mask_support(id_priv->id.device,
          id_priv->id.port_num);
 gid_type = cma_route_gid_type(addr->dev_addr.network,
          supported_gids,
          id_priv->gid_type);

 if (gid_type < ib_network_to_gid_type(addr->dev_addr.network))
  gid_type = ib_network_to_gid_type(addr->dev_addr.network);
 route->path_rec->rec_type = sa_conv_gid_to_pathrec_type(gid_type);

 route->path_rec->roce.route_resolved = 1;
 sa_path_set_dmac(route->path_rec, addr->dev_addr.dst_dev_addr);
 return ndev;
}
