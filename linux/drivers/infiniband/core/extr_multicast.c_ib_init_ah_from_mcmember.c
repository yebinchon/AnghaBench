
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rdma_ah_attr {int type; } ;
struct net_device {int dummy; } ;
struct ib_sa_mcmember_rec {int traffic_class; int hop_limit; int flow_label; int mgid; int rate; int sl; int mlid; int port_gid; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ib_gid_attr const*) ;
 int PTR_ERR (struct ib_gid_attr const*) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memset (struct rdma_ah_attr*,int ,int) ;
 int rdma_ah_find_type (struct ib_device*,int ) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_static_rate (struct rdma_ah_attr*,int ) ;
 struct ib_gid_attr* rdma_find_gid_by_port (struct ib_device*,int *,int,int ,struct net_device*) ;
 int rdma_move_grh_sgid_attr (struct rdma_ah_attr*,int *,int ,int ,int ,struct ib_gid_attr const*) ;
 scalar_t__ rdma_protocol_ib (struct ib_device*,int ) ;
 int rdma_protocol_roce (struct ib_device*,int ) ;

int ib_init_ah_from_mcmember(struct ib_device *device, u8 port_num,
        struct ib_sa_mcmember_rec *rec,
        struct net_device *ndev,
        enum ib_gid_type gid_type,
        struct rdma_ah_attr *ah_attr)
{
 const struct ib_gid_attr *sgid_attr;




 if (rdma_protocol_ib(device, port_num))
  ndev = ((void*)0);
 else if (!rdma_protocol_roce(device, port_num))
  return -EINVAL;

 sgid_attr = rdma_find_gid_by_port(device, &rec->port_gid,
       gid_type, port_num, ndev);
 if (IS_ERR(sgid_attr))
  return PTR_ERR(sgid_attr);

 memset(ah_attr, 0, sizeof(*ah_attr));
 ah_attr->type = rdma_ah_find_type(device, port_num);

 rdma_ah_set_dlid(ah_attr, be16_to_cpu(rec->mlid));
 rdma_ah_set_sl(ah_attr, rec->sl);
 rdma_ah_set_port_num(ah_attr, port_num);
 rdma_ah_set_static_rate(ah_attr, rec->rate);
 rdma_move_grh_sgid_attr(ah_attr, &rec->mgid,
    be32_to_cpu(rec->flow_label),
    rec->hop_limit, rec->traffic_class,
    sgid_attr);
 return 0;
}
