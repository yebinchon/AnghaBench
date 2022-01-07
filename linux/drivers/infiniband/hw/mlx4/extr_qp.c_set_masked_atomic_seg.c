
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_masked_atomic_seg {void* compare_mask; void* compare; void* swap_add_mask; void* swap_add; } ;
struct ib_atomic_wr {int compare_add_mask; int compare_add; int swap_mask; int swap; } ;


 void* cpu_to_be64 (int ) ;

__attribute__((used)) static void set_masked_atomic_seg(struct mlx4_wqe_masked_atomic_seg *aseg,
      const struct ib_atomic_wr *wr)
{
 aseg->swap_add = cpu_to_be64(wr->swap);
 aseg->swap_add_mask = cpu_to_be64(wr->swap_mask);
 aseg->compare = cpu_to_be64(wr->compare_add);
 aseg->compare_mask = cpu_to_be64(wr->compare_add_mask);
}
