
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_ib_wq {int dummy; } ;


 int _handle_post_send_edge (struct mlx5_ib_wq*,void**,int ,void**) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline void handle_post_send_edge(struct mlx5_ib_wq *sq, void **seg,
      u32 wqe_sz, void **cur_edge)
{
 if (likely(*seg != *cur_edge))
  return;

 _handle_post_send_edge(sq, seg, wqe_sz, cur_edge);
}
