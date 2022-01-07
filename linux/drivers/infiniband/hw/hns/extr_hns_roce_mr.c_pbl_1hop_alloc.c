
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_mr {int pbl_size; int pbl_hop_num; int pbl_buf_pg_sz; int pbl_ba_pg_sz; int pbl_dma_addr; int pbl_ba; int pbl_buf; } ;
struct TYPE_2__ {int pbl_buf_pg_sz; int pbl_ba_pg_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,int) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;

__attribute__((used)) static int pbl_1hop_alloc(struct hns_roce_dev *hr_dev, int npages,
          struct hns_roce_mr *mr, u32 pbl_bt_sz)
{
 struct device *dev = hr_dev->dev;

 if (npages > pbl_bt_sz / 8) {
  dev_err(dev, "npages %d is larger than buf_pg_sz!",
   npages);
  return -EINVAL;
 }
 mr->pbl_buf = dma_alloc_coherent(dev, npages * 8,
      &(mr->pbl_dma_addr),
      GFP_KERNEL);
 if (!mr->pbl_buf)
  return -ENOMEM;

 mr->pbl_size = npages;
 mr->pbl_ba = mr->pbl_dma_addr;
 mr->pbl_hop_num = 1;
 mr->pbl_ba_pg_sz = hr_dev->caps.pbl_ba_pg_sz;
 mr->pbl_buf_pg_sz = hr_dev->caps.pbl_buf_pg_sz;
 return 0;

}
