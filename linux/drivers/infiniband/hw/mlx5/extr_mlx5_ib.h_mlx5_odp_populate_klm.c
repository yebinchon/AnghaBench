
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_klm {int dummy; } ;
struct mlx5_ib_mr {int dummy; } ;



__attribute__((used)) static inline void mlx5_odp_populate_klm(struct mlx5_klm *pklm, size_t offset,
      size_t nentries, struct mlx5_ib_mr *mr,
      int flags) {}
