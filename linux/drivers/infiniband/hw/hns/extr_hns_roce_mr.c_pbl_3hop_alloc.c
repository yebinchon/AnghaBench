
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hns_roce_mr {int l0_chunk_last_num; int l1_chunk_last_num; void** pbl_l2_dma_addr; void** pbl_bt_l2; void*** pbl_bt_l1; void** pbl_l1_dma_addr; void** pbl_bt_l0; } ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (struct device*,int,void**,int ) ;
 int hns_roce_loop_free (struct hns_roce_dev*,struct hns_roce_mr*,int,int,int) ;
 void* kcalloc (int,int,int ) ;
 int kfree (void**) ;

__attribute__((used)) static int pbl_3hop_alloc(struct hns_roce_dev *hr_dev, int npages,
          struct hns_roce_mr *mr, u32 pbl_bt_sz)
{
 struct device *dev = hr_dev->dev;
 int mr_alloc_done = 0;
 int npages_allocated;
 u64 pbl_last_bt_num;
 u64 pbl_bt_cnt = 0;
 u64 bt_idx;
 u64 size;
 int i;
 int j = 0;

 pbl_last_bt_num = (npages + pbl_bt_sz / 8 - 1) / (pbl_bt_sz / 8);

 mr->pbl_l2_dma_addr = kcalloc(pbl_last_bt_num,
          sizeof(*mr->pbl_l2_dma_addr),
          GFP_KERNEL);
 if (!mr->pbl_l2_dma_addr)
  return -ENOMEM;

 mr->pbl_bt_l2 = kcalloc(pbl_last_bt_num,
    sizeof(*mr->pbl_bt_l2),
    GFP_KERNEL);
 if (!mr->pbl_bt_l2)
  goto err_kcalloc_bt_l2;


 for (i = 0; i < pbl_bt_sz / 8; i++) {
  mr->pbl_bt_l1[i] = dma_alloc_coherent(dev, pbl_bt_sz,
         &(mr->pbl_l1_dma_addr[i]),
         GFP_KERNEL);
  if (!mr->pbl_bt_l1[i]) {
   hns_roce_loop_free(hr_dev, mr, 1, i, 0);
   goto err_dma_alloc_l0;
  }

  *(mr->pbl_bt_l0 + i) = mr->pbl_l1_dma_addr[i];

  for (j = 0; j < pbl_bt_sz / 8; j++) {
   bt_idx = i * pbl_bt_sz / 8 + j;

   if (pbl_bt_cnt + 1 < pbl_last_bt_num) {
    size = pbl_bt_sz;
   } else {
    npages_allocated = bt_idx *
         (pbl_bt_sz / 8);
    size = (npages - npages_allocated) * 8;
   }
   mr->pbl_bt_l2[bt_idx] = dma_alloc_coherent(
          dev, size,
          &(mr->pbl_l2_dma_addr[bt_idx]),
          GFP_KERNEL);
   if (!mr->pbl_bt_l2[bt_idx]) {
    hns_roce_loop_free(hr_dev, mr, 2, i, j);
    goto err_dma_alloc_l0;
   }

   *(mr->pbl_bt_l1[i] + j) =
     mr->pbl_l2_dma_addr[bt_idx];

   pbl_bt_cnt++;
   if (pbl_bt_cnt >= pbl_last_bt_num) {
    mr_alloc_done = 1;
    break;
   }
  }

  if (mr_alloc_done)
   break;
 }

 mr->l0_chunk_last_num = i + 1;
 mr->l1_chunk_last_num = j + 1;


 return 0;

err_dma_alloc_l0:
 kfree(mr->pbl_bt_l2);
 mr->pbl_bt_l2 = ((void*)0);

err_kcalloc_bt_l2:
 kfree(mr->pbl_l2_dma_addr);
 mr->pbl_l2_dma_addr = ((void*)0);

 return -ENOMEM;
}
