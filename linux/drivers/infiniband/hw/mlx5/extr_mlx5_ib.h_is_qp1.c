
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int MLX5_IB_QPT_HW_GSI ;

__attribute__((used)) static inline int is_qp1(enum ib_qp_type qp_type)
{
 return qp_type == MLX5_IB_QPT_HW_GSI;
}
