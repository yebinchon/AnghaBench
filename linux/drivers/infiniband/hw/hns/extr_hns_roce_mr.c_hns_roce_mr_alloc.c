
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef void* u32 ;
struct hns_roce_mr {unsigned long long iova; unsigned long long size; int * pbl_buf; scalar_t__ pbl_dma_addr; scalar_t__ pbl_l0_dma_addr; int * pbl_l1_dma_addr; int * pbl_l2_dma_addr; int * pbl_bt_l0; int * pbl_bt_l1; int * pbl_bt_l2; int key; scalar_t__ enabled; void* access; void* pd; } ;
struct TYPE_4__ {int pbl_hop_num; } ;
struct TYPE_3__ {int mtpt_bitmap; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__ mr_table; struct device* dev; } ;
struct device {int dummy; } ;


 int BA_BYTE_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * dma_alloc_coherent (struct device*,int,scalar_t__*,int ) ;
 int hns_roce_bitmap_alloc (int *,unsigned long*) ;
 int hns_roce_mhop_alloc (struct hns_roce_dev*,int,struct hns_roce_mr*) ;
 int hw_index_to_key (unsigned long) ;

__attribute__((used)) static int hns_roce_mr_alloc(struct hns_roce_dev *hr_dev, u32 pd, u64 iova,
        u64 size, u32 access, int npages,
        struct hns_roce_mr *mr)
{
 struct device *dev = hr_dev->dev;
 unsigned long index = 0;
 int ret;


 ret = hns_roce_bitmap_alloc(&hr_dev->mr_table.mtpt_bitmap, &index);
 if (ret == -1)
  return -ENOMEM;

 mr->iova = iova;
 mr->size = size;
 mr->pd = pd;
 mr->access = access;
 mr->enabled = 0;
 mr->key = hw_index_to_key(index);

 if (size == ~0ull) {
  mr->pbl_buf = ((void*)0);
  mr->pbl_dma_addr = 0;

  mr->pbl_bt_l2 = ((void*)0);
  mr->pbl_bt_l1 = ((void*)0);
  mr->pbl_bt_l0 = ((void*)0);
  mr->pbl_l2_dma_addr = ((void*)0);
  mr->pbl_l1_dma_addr = ((void*)0);
  mr->pbl_l0_dma_addr = 0;
 } else {
  if (!hr_dev->caps.pbl_hop_num) {
   mr->pbl_buf = dma_alloc_coherent(dev,
        npages * BA_BYTE_LEN,
        &(mr->pbl_dma_addr),
        GFP_KERNEL);
   if (!mr->pbl_buf)
    return -ENOMEM;
  } else {
   ret = hns_roce_mhop_alloc(hr_dev, npages, mr);
  }
 }

 return ret;
}
