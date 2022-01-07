
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_rwqe_sig {int signature; } ;


 int calc_sig (struct mlx5_rwqe_sig*,int) ;

__attribute__((used)) static void set_sig_seg(struct mlx5_rwqe_sig *sig, int size)
{
 sig->signature = calc_sig(sig, size);
}
