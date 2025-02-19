
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_mr {unsigned long long size; scalar_t__ type; int key; scalar_t__ enabled; int pbl_dma_addr; int pbl_buf; int umem; } ;
struct TYPE_4__ {int mtpt_bitmap; int mtpt_table; } ;
struct TYPE_3__ {int num_mtpts; int pbl_hop_num; } ;
struct hns_roce_dev {TYPE_2__ mr_table; TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;


 int BA_BYTE_LEN ;
 int BITMAP_NO_RR ;
 scalar_t__ MR_TYPE_MR ;
 int dev_warn (struct device*,char*,int) ;
 int dma_free_coherent (struct device*,unsigned int,int ,int ) ;
 int hns_roce_bitmap_free (int *,int,int ) ;
 int hns_roce_hw2sw_mpt (struct hns_roce_dev*,int *,int) ;
 int hns_roce_mhop_free (struct hns_roce_dev*,struct hns_roce_mr*) ;
 int hns_roce_table_put (struct hns_roce_dev*,int *,int) ;
 int ib_umem_page_count (int ) ;
 int key_to_hw_index (int ) ;

__attribute__((used)) static void hns_roce_mr_free(struct hns_roce_dev *hr_dev,
        struct hns_roce_mr *mr)
{
 struct device *dev = hr_dev->dev;
 int npages = 0;
 int ret;

 if (mr->enabled) {
  ret = hns_roce_hw2sw_mpt(hr_dev, ((void*)0), key_to_hw_index(mr->key)
      & (hr_dev->caps.num_mtpts - 1));
  if (ret)
   dev_warn(dev, "HW2SW_MPT failed (%d)\n", ret);
 }

 if (mr->size != ~0ULL) {
  if (mr->type == MR_TYPE_MR)
   npages = ib_umem_page_count(mr->umem);

  if (!hr_dev->caps.pbl_hop_num)
   dma_free_coherent(dev,
       (unsigned int)(npages * BA_BYTE_LEN),
       mr->pbl_buf, mr->pbl_dma_addr);
  else
   hns_roce_mhop_free(hr_dev, mr);
 }

 if (mr->enabled)
  hns_roce_table_put(hr_dev, &hr_dev->mr_table.mtpt_table,
       key_to_hw_index(mr->key));

 hns_roce_bitmap_free(&hr_dev->mr_table.mtpt_bitmap,
        key_to_hw_index(mr->key), BITMAP_NO_RR);
}
