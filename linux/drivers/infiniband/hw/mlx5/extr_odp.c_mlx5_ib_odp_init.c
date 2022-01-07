
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_ULL (scalar_t__) ;
 scalar_t__ MLX5_IMR_MTT_BITS ;
 int TASK_SIZE ;
 scalar_t__ get_order (int ) ;
 int mlx5_imr_ksm_entries ;

int mlx5_ib_odp_init(void)
{
 mlx5_imr_ksm_entries = BIT_ULL(get_order(TASK_SIZE) -
           MLX5_IMR_MTT_BITS);

 return 0;
}
