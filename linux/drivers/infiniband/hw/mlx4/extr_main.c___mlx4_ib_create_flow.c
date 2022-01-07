
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_flow_spec {int type; int size; } ;
typedef int u64 ;
typedef int u16 ;
struct mlx4_net_trans_rule_hw_ctrl {int qpn; int port; scalar_t__ type; int prio; } ;
struct mlx4_ib_dev {int dev; } ;
struct mlx4_cmd_mailbox {int dma; struct mlx4_net_trans_rule_hw_ctrl* buf; } ;
struct ib_qp {int qp_num; int device; } ;
struct ib_flow_attr {int const priority; int num_of_specs; int port; } ;
struct _rule_hw {int dummy; } ;
typedef enum mlx4_net_trans_promisc_mode { ____Placeholder_mlx4_net_trans_promisc_mode } mlx4_net_trans_promisc_mode ;
typedef enum ib_flow_spec_type { ____Placeholder_ib_flow_spec_type } ib_flow_spec_type ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;


 int IB_FLOW_DOMAIN_NUM ;


 int IB_FLOW_SPEC_ETH ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;




 int MLX4_FS_REGULAR ;
 int const MLX4_IB_FLOW_MAX_PRIO ;
 int MLX4_QP_FLOW_STEERING_ATTACH ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int __mlx4_ib_create_default_rules (struct mlx4_ib_dev*,struct ib_qp*,scalar_t__,struct mlx4_net_trans_rule_hw_ctrl*) ;
 int __mlx4_ib_default_rules_match (struct ib_qp*,struct ib_flow_attr*) ;
 int cpu_to_be16 (int const) ;
 int cpu_to_be32 (int ) ;
 scalar_t__ default_table ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (int ) ;
 int mlx4_cmd_imm (int ,int ,int *,int,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (int ,struct mlx4_cmd_mailbox*) ;
 int mlx4_handle_eth_header_mcast_prio (struct mlx4_net_trans_rule_hw_ctrl*,struct _rule_hw*) ;
 scalar_t__ mlx4_is_master (int ) ;
 scalar_t__ mlx4_map_sw_to_hw_steering_mode (int ,int) ;
 int parse_flow_attr (int ,int ,void*,struct mlx4_net_trans_rule_hw_ctrl*) ;
 int pr_err (char*,...) ;
 struct mlx4_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int __mlx4_ib_create_flow(struct ib_qp *qp, struct ib_flow_attr *flow_attr,
     int domain,
     enum mlx4_net_trans_promisc_mode flow_type,
     u64 *reg_id)
{
 int ret, i;
 int size = 0;
 void *ib_flow;
 struct mlx4_ib_dev *mdev = to_mdev(qp->device);
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_net_trans_rule_hw_ctrl *ctrl;
 int default_flow;

 static const u16 __mlx4_domain[] = {
  [132] = 128,
  [135] = 131,
  [133] = 129,
  [134] = 130,
 };

 if (flow_attr->priority > MLX4_IB_FLOW_MAX_PRIO) {
  pr_err("Invalid priority value %d\n", flow_attr->priority);
  return -EINVAL;
 }

 if (domain >= IB_FLOW_DOMAIN_NUM) {
  pr_err("Invalid domain value %d\n", domain);
  return -EINVAL;
 }

 if (mlx4_map_sw_to_hw_steering_mode(mdev->dev, flow_type) < 0)
  return -EINVAL;

 mailbox = mlx4_alloc_cmd_mailbox(mdev->dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 ctrl = mailbox->buf;

 ctrl->prio = cpu_to_be16(__mlx4_domain[domain] |
     flow_attr->priority);
 ctrl->type = mlx4_map_sw_to_hw_steering_mode(mdev->dev, flow_type);
 ctrl->port = flow_attr->port;
 ctrl->qpn = cpu_to_be32(qp->qp_num);

 ib_flow = flow_attr + 1;
 size += sizeof(struct mlx4_net_trans_rule_hw_ctrl);

 default_flow = __mlx4_ib_default_rules_match(qp, flow_attr);
 if (default_flow >= 0) {
  ret = __mlx4_ib_create_default_rules(
    mdev, qp, default_table + default_flow,
    mailbox->buf + size);
  if (ret < 0) {
   mlx4_free_cmd_mailbox(mdev->dev, mailbox);
   return -EINVAL;
  }
  size += ret;
 }
 for (i = 0; i < flow_attr->num_of_specs; i++) {
  ret = parse_flow_attr(mdev->dev, qp->qp_num, ib_flow,
          mailbox->buf + size);
  if (ret < 0) {
   mlx4_free_cmd_mailbox(mdev->dev, mailbox);
   return -EINVAL;
  }
  ib_flow += ((union ib_flow_spec *) ib_flow)->size;
  size += ret;
 }

 if (mlx4_is_master(mdev->dev) && flow_type == MLX4_FS_REGULAR &&
     flow_attr->num_of_specs == 1) {
  struct _rule_hw *rule_header = (struct _rule_hw *)(ctrl + 1);
  enum ib_flow_spec_type header_spec =
   ((union ib_flow_spec *)(flow_attr + 1))->type;

  if (header_spec == IB_FLOW_SPEC_ETH)
   mlx4_handle_eth_header_mcast_prio(ctrl, rule_header);
 }

 ret = mlx4_cmd_imm(mdev->dev, mailbox->dma, reg_id, size >> 2, 0,
      MLX4_QP_FLOW_STEERING_ATTACH, MLX4_CMD_TIME_CLASS_A,
      MLX4_CMD_NATIVE);
 if (ret == -ENOMEM)
  pr_err("mcg table is full. Fail to register network rule.\n");
 else if (ret == -ENXIO)
  pr_err("Device managed flow steering is disabled. Fail to register network rule.\n");
 else if (ret)
  pr_err("Invalid argument. Fail to register network rule.\n");

 mlx4_free_cmd_mailbox(mdev->dev, mailbox);
 return ret;
}
