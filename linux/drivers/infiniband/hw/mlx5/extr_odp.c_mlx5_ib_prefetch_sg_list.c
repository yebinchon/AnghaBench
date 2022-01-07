
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_sge {int length; int addr; int lkey; } ;
struct ib_pd {int device; } ;


 int pagefault_single_data_segment (struct mlx5_ib_dev*,struct ib_pd*,int ,int ,int ,int*,int *,size_t) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int mlx5_ib_prefetch_sg_list(struct ib_pd *pd, u32 pf_flags,
        struct ib_sge *sg_list, u32 num_sge)
{
 u32 i;
 int ret = 0;
 struct mlx5_ib_dev *dev = to_mdev(pd->device);

 for (i = 0; i < num_sge; ++i) {
  struct ib_sge *sg = &sg_list[i];
  int bytes_committed = 0;

  ret = pagefault_single_data_segment(dev, pd, sg->lkey, sg->addr,
          sg->length,
          &bytes_committed, ((void*)0),
          pf_flags);
  if (ret < 0)
   break;
 }

 return ret < 0 ? ret : 0;
}
