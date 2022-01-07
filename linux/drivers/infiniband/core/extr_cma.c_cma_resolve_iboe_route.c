
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_6__ {int hoplimit; } ;
struct rdma_addr {TYPE_3__ dev_addr; int dst_addr; int src_addr; } ;
struct rdma_route {int num_paths; struct cma_work* path_rec; struct rdma_addr addr; } ;
struct TYPE_5__ {size_t port_num; struct rdma_route route; } ;
struct rdma_id_private {TYPE_2__ id; int tos; scalar_t__ tos_set; TYPE_1__* cma_dev; } ;
struct net_device {int mtu; } ;
struct cma_work {int hop_limit; int reversible; int work; int mtu; int packet_life_time; void* packet_life_time_selector; int rate; void* rate_selector; int traffic_class; int sl; void* mtu_selector; int pkey; int dgid; int sgid; } ;
struct TYPE_4__ {int device; int * default_roce_tos; } ;


 scalar_t__ AF_IB ;
 int CMA_IBOE_PACKET_LIFETIME ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* IB_SA_EQ ;
 struct net_device* cma_iboe_set_path_rec_l2_fields (struct rdma_id_private*) ;
 int cma_init_resolve_route_work (struct cma_work*,struct rdma_id_private*) ;
 int cma_wq ;
 int cpu_to_be16 (int) ;
 int dev_put (struct net_device*) ;
 int iboe_get_mtu (int ) ;
 int iboe_get_rate (struct net_device*) ;
 int iboe_tos_to_sl (struct net_device*,int ) ;
 int kfree (struct cma_work*) ;
 void* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int rdma_ip2gid (struct sockaddr*,int *) ;
 size_t rdma_start_port (int ) ;

__attribute__((used)) static int cma_resolve_iboe_route(struct rdma_id_private *id_priv)
{
 struct rdma_route *route = &id_priv->id.route;
 struct rdma_addr *addr = &route->addr;
 struct cma_work *work;
 int ret;
 struct net_device *ndev;

 u8 default_roce_tos = id_priv->cma_dev->default_roce_tos[id_priv->id.port_num -
     rdma_start_port(id_priv->cma_dev->device)];
 u8 tos = id_priv->tos_set ? id_priv->tos : default_roce_tos;


 work = kzalloc(sizeof *work, GFP_KERNEL);
 if (!work)
  return -ENOMEM;

 route->path_rec = kzalloc(sizeof *route->path_rec, GFP_KERNEL);
 if (!route->path_rec) {
  ret = -ENOMEM;
  goto err1;
 }

 route->num_paths = 1;

 ndev = cma_iboe_set_path_rec_l2_fields(id_priv);
 if (!ndev) {
  ret = -ENODEV;
  goto err2;
 }

 rdma_ip2gid((struct sockaddr *)&id_priv->id.route.addr.src_addr,
      &route->path_rec->sgid);
 rdma_ip2gid((struct sockaddr *)&id_priv->id.route.addr.dst_addr,
      &route->path_rec->dgid);

 if (((struct sockaddr *)&id_priv->id.route.addr.dst_addr)->sa_family != AF_IB)

  route->path_rec->hop_limit = addr->dev_addr.hoplimit;
 else
  route->path_rec->hop_limit = 1;
 route->path_rec->reversible = 1;
 route->path_rec->pkey = cpu_to_be16(0xffff);
 route->path_rec->mtu_selector = IB_SA_EQ;
 route->path_rec->sl = iboe_tos_to_sl(ndev, tos);
 route->path_rec->traffic_class = tos;
 route->path_rec->mtu = iboe_get_mtu(ndev->mtu);
 route->path_rec->rate_selector = IB_SA_EQ;
 route->path_rec->rate = iboe_get_rate(ndev);
 dev_put(ndev);
 route->path_rec->packet_life_time_selector = IB_SA_EQ;
 route->path_rec->packet_life_time = CMA_IBOE_PACKET_LIFETIME;
 if (!route->path_rec->mtu) {
  ret = -EINVAL;
  goto err2;
 }

 cma_init_resolve_route_work(work, id_priv);
 queue_work(cma_wq, &work->work);

 return 0;

err2:
 kfree(route->path_rec);
 route->path_rec = ((void*)0);
err1:
 kfree(work);
 return ret;
}
