
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ current_block_end ;


 unsigned long long alignment_of (unsigned long long) ;

__attribute__((used)) static int mlx4_ib_umem_calc_block_mtt(u64 next_block_start,
           u64 current_block_end,
           u64 block_shift)
{




 if ((next_block_start & ((1ULL << block_shift) - 1ULL)) != 0)





  block_shift = alignment_of(next_block_start);





 if (((current_block_end) & ((1ULL << block_shift) - 1ULL)) != 0)




  block_shift = alignment_of(current_block_end);

 return block_shift;
}
