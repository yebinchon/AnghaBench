
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_wqe_raddr_seg {int dummy; } ;
struct mlx4_wqe_masked_atomic_seg {int dummy; } ;
struct mlx4_wqe_inline_seg {int dummy; } ;
struct mlx4_wqe_datagram_seg {int dummy; } ;
struct mlx4_wqe_data_seg {int dummy; } ;
struct mlx4_wqe_ctrl_seg {int dummy; } ;
typedef enum mlx4_ib_qp_type { ____Placeholder_mlx4_ib_qp_type } mlx4_ib_qp_type ;


 int ALIGN (int,int) ;
 int DIV_ROUND_UP (int ,int ) ;
 int MLX4_IB_LSO_HEADER_SPARE ;
 int MLX4_IB_QP_LSO ;
 int MLX4_IB_UD_HEADER_SIZE ;
 int MLX4_INLINE_ALIGN ;

__attribute__((used)) static int send_wqe_overhead(enum mlx4_ib_qp_type type, u32 flags)
{






 switch (type) {
 case 128:
  return sizeof (struct mlx4_wqe_ctrl_seg) +
   sizeof (struct mlx4_wqe_datagram_seg) +
   ((flags & MLX4_IB_QP_LSO) ? MLX4_IB_LSO_HEADER_SPARE : 0);
 case 134:
 case 135:
 case 136:
  return sizeof (struct mlx4_wqe_ctrl_seg) +
   sizeof (struct mlx4_wqe_datagram_seg) + 64;
 case 130:
 case 131:
  return sizeof (struct mlx4_wqe_ctrl_seg) +
   sizeof (struct mlx4_wqe_datagram_seg);

 case 129:
  return sizeof (struct mlx4_wqe_ctrl_seg) +
   sizeof (struct mlx4_wqe_raddr_seg);
 case 133:
  return sizeof (struct mlx4_wqe_ctrl_seg) +
   sizeof (struct mlx4_wqe_masked_atomic_seg) +
   sizeof (struct mlx4_wqe_raddr_seg);
 case 132:
 case 137:
  return sizeof (struct mlx4_wqe_ctrl_seg) +
   ALIGN(MLX4_IB_UD_HEADER_SIZE +
         DIV_ROUND_UP(MLX4_IB_UD_HEADER_SIZE,
        MLX4_INLINE_ALIGN) *
         sizeof (struct mlx4_wqe_inline_seg),
         sizeof (struct mlx4_wqe_data_seg)) +
   ALIGN(4 +
         sizeof (struct mlx4_wqe_inline_seg),
         sizeof (struct mlx4_wqe_data_seg));
 default:
  return sizeof (struct mlx4_wqe_ctrl_seg);
 }
}
