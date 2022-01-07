
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_ib_dev {TYPE_1__* diag_counters; } ;
struct TYPE_2__ {int name; int offset; } ;


 int MLX4_DIAG_COUNTERS_TYPES ;
 int kfree (int ) ;

__attribute__((used)) static void mlx4_ib_diag_cleanup(struct mlx4_ib_dev *ibdev)
{
 int i;

 for (i = 0; i < MLX4_DIAG_COUNTERS_TYPES; i++) {
  kfree(ibdev->diag_counters[i].offset);
  kfree(ibdev->diag_counters[i].name);
 }
}
