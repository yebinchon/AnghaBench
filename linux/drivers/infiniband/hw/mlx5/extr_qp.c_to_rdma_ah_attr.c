
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rdma_ah_attr {int type; } ;
struct mlx5_qp_path {scalar_t__ port; int dci_cfi_prio_sl; int grh_mlid; int rgid; int hop_limit; int mgid_index; int tclass_flowlabel; scalar_t__ static_rate; int rlid; } ;
struct mlx5_ib_dev {scalar_t__ num_ports; int ib_dev; } ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memset (struct rdma_ah_attr*,int ,int) ;
 int rdma_ah_find_type (int *,scalar_t__) ;
 int rdma_ah_set_dgid_raw (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_grh (struct rdma_ah_attr*,int *,int,int ,int ,int) ;
 int rdma_ah_set_path_bits (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,scalar_t__) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_static_rate (struct rdma_ah_attr*,scalar_t__) ;

__attribute__((used)) static void to_rdma_ah_attr(struct mlx5_ib_dev *ibdev,
       struct rdma_ah_attr *ah_attr,
       struct mlx5_qp_path *path)
{

 memset(ah_attr, 0, sizeof(*ah_attr));

 if (!path->port || path->port > ibdev->num_ports)
  return;

 ah_attr->type = rdma_ah_find_type(&ibdev->ib_dev, path->port);

 rdma_ah_set_port_num(ah_attr, path->port);
 rdma_ah_set_sl(ah_attr, path->dci_cfi_prio_sl & 0xf);

 rdma_ah_set_dlid(ah_attr, be16_to_cpu(path->rlid));
 rdma_ah_set_path_bits(ah_attr, path->grh_mlid & 0x7f);
 rdma_ah_set_static_rate(ah_attr,
    path->static_rate ? path->static_rate - 5 : 0);
 if (path->grh_mlid & (1 << 7)) {
  u32 tc_fl = be32_to_cpu(path->tclass_flowlabel);

  rdma_ah_set_grh(ah_attr, ((void*)0),
    tc_fl & 0xfffff,
    path->mgid_index,
    path->hop_limit,
    (tc_fl >> 20) & 0xff);
  rdma_ah_set_dgid_raw(ah_attr, path->rgid);
 }
}
