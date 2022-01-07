
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_inline_seg {int byte_count; } ;


 int cpu_to_be32 (int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void add_zero_len_inline(void *wqe)
{
 struct mlx4_wqe_inline_seg *inl = wqe;
 memset(wqe, 0, 16);
 inl->byte_count = cpu_to_be32(1 << 31);
}
