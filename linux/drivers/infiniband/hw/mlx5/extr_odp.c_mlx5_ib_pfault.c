
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_pagefault {int event_subtype; } ;
struct mlx5_ib_dev {int dummy; } ;




 int mlx5_ib_err (struct mlx5_ib_dev*,char*,int) ;
 int mlx5_ib_mr_rdma_pfault_handler (struct mlx5_ib_dev*,struct mlx5_pagefault*) ;
 int mlx5_ib_mr_wqe_pfault_handler (struct mlx5_ib_dev*,struct mlx5_pagefault*) ;
 int mlx5_ib_page_fault_resume (struct mlx5_ib_dev*,struct mlx5_pagefault*,int) ;

__attribute__((used)) static void mlx5_ib_pfault(struct mlx5_ib_dev *dev, struct mlx5_pagefault *pfault)
{
 u8 event_subtype = pfault->event_subtype;

 switch (event_subtype) {
 case 128:
  mlx5_ib_mr_wqe_pfault_handler(dev, pfault);
  break;
 case 129:
  mlx5_ib_mr_rdma_pfault_handler(dev, pfault);
  break;
 default:
  mlx5_ib_err(dev, "Invalid page fault event subtype: 0x%x\n",
       event_subtype);
  mlx5_ib_page_fault_resume(dev, pfault, 1);
 }
}
