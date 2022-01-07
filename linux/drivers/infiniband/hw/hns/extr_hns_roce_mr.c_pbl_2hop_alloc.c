
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hns_roce_mr {int l0_chunk_last_num; int * pbl_l1_dma_addr; int * pbl_bt_l0; int * pbl_bt_l1; } ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int hns_roce_loop_free (struct hns_roce_dev*,struct hns_roce_mr*,int,int,int ) ;

__attribute__((used)) static int pbl_2hop_alloc(struct hns_roce_dev *hr_dev, int npages,
          struct hns_roce_mr *mr, u32 pbl_bt_sz)
{
 struct device *dev = hr_dev->dev;
 int npages_allocated;
 u64 pbl_last_bt_num;
 u64 pbl_bt_cnt = 0;
 u64 size;
 int i;

 pbl_last_bt_num = (npages + pbl_bt_sz / 8 - 1) / (pbl_bt_sz / 8);


 for (i = 0; i < pbl_bt_sz / 8; i++) {
  if (pbl_bt_cnt + 1 < pbl_last_bt_num) {
   size = pbl_bt_sz;
  } else {
   npages_allocated = i * (pbl_bt_sz / 8);
   size = (npages - npages_allocated) * 8;
  }
  mr->pbl_bt_l1[i] = dma_alloc_coherent(dev, size,
         &(mr->pbl_l1_dma_addr[i]),
         GFP_KERNEL);
  if (!mr->pbl_bt_l1[i]) {
   hns_roce_loop_free(hr_dev, mr, 1, i, 0);
   return -ENOMEM;
  }

  *(mr->pbl_bt_l0 + i) = mr->pbl_l1_dma_addr[i];

  pbl_bt_cnt++;
  if (pbl_bt_cnt >= pbl_last_bt_num)
   break;
 }

 mr->l0_chunk_last_num = i + 1;

 return 0;
}
