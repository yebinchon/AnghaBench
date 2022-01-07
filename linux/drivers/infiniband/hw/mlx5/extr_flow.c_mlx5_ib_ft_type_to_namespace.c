
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5_ib_uapi_flow_table_type { ____Placeholder_mlx5_ib_uapi_flow_table_type } mlx5_ib_uapi_flow_table_type ;
typedef enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;


 int EINVAL ;
 int MLX5_FLOW_NAMESPACE_BYPASS ;
 int MLX5_FLOW_NAMESPACE_EGRESS ;
 int MLX5_FLOW_NAMESPACE_FDB ;
 int MLX5_FLOW_NAMESPACE_RDMA_RX ;





__attribute__((used)) static int
mlx5_ib_ft_type_to_namespace(enum mlx5_ib_uapi_flow_table_type table_type,
        enum mlx5_flow_namespace_type *namespace)
{
 switch (table_type) {
 case 130:
  *namespace = MLX5_FLOW_NAMESPACE_BYPASS;
  break;
 case 129:
  *namespace = MLX5_FLOW_NAMESPACE_EGRESS;
  break;
 case 131:
  *namespace = MLX5_FLOW_NAMESPACE_FDB;
  break;
 case 128:
  *namespace = MLX5_FLOW_NAMESPACE_RDMA_RX;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
