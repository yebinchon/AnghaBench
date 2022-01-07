
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ r_key; scalar_t__ rdma_va; scalar_t__ rdma_op_len; scalar_t__ packet_size; } ;
struct mlx5_pagefault {scalar_t__ bytes_committed; int token; int type; TYPE_1__ rdma; } ;
struct mlx5_ib_dev {int dummy; } ;


 int EAGAIN ;
 int ENOENT ;
 scalar_t__ MAX_PREFETCH_LEN ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int,int ,scalar_t__,...) ;
 int mlx5_ib_page_fault_resume (struct mlx5_ib_dev*,struct mlx5_pagefault*,int) ;
 int pagefault_single_data_segment (struct mlx5_ib_dev*,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int *,int ) ;
 int pages_in_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mlx5_ib_mr_rdma_pfault_handler(struct mlx5_ib_dev *dev,
        struct mlx5_pagefault *pfault)
{
 u64 address;
 u32 length;
 u32 prefetch_len = pfault->bytes_committed;
 int prefetch_activated = 0;
 u32 rkey = pfault->rdma.r_key;
 int ret;







 pfault->rdma.rdma_va += pfault->bytes_committed;
 pfault->rdma.rdma_op_len -= min(pfault->bytes_committed,
      pfault->rdma.rdma_op_len);
 pfault->bytes_committed = 0;

 address = pfault->rdma.rdma_va;
 length = pfault->rdma.rdma_op_len;




 if (length == 0) {
  prefetch_activated = 1;
  length = pfault->rdma.packet_size;
  prefetch_len = min(MAX_PREFETCH_LEN, prefetch_len);
 }

 ret = pagefault_single_data_segment(dev, ((void*)0), rkey, address, length,
         &pfault->bytes_committed, ((void*)0),
         0);
 if (ret == -EAGAIN) {

  prefetch_activated = 0;
 } else if (ret < 0 || pages_in_range(address, length) > ret) {
  mlx5_ib_page_fault_resume(dev, pfault, 1);
  if (ret != -ENOENT)
   mlx5_ib_dbg(dev, "PAGE FAULT error %d. QP 0x%x, type: 0x%x\n",
        ret, pfault->token, pfault->type);
  return;
 }

 mlx5_ib_page_fault_resume(dev, pfault, 0);
 mlx5_ib_dbg(dev, "PAGE FAULT completed. QP 0x%x, type: 0x%x, prefetch_activated: %d\n",
      pfault->token, pfault->type,
      prefetch_activated);






 if (prefetch_activated) {
  u32 bytes_committed = 0;

  ret = pagefault_single_data_segment(dev, ((void*)0), rkey, address,
          prefetch_len,
          &bytes_committed, ((void*)0),
          0);
  if (ret < 0 && ret != -EAGAIN) {
   mlx5_ib_dbg(dev, "Prefetch failed. ret: %d, QP 0x%x, address: 0x%.16llx, length = 0x%.16x\n",
        ret, pfault->token, address, prefetch_len);
  }
 }
}
