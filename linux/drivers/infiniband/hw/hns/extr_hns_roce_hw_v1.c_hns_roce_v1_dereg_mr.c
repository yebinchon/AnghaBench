
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct hns_roce_free_mr {int free_mr_wq; } ;
struct hns_roce_v1_priv {struct hns_roce_free_mr free_mr; } ;
struct hns_roce_mr_free_work {int comp_flag; int work; struct completion* comp; void* mr; int * ib_dev; } ;
struct hns_roce_mr {unsigned long long size; int umem; int key; int pbl_dma_addr; int pbl_buf; scalar_t__ enabled; } ;
struct TYPE_6__ {int mtpt_bitmap; } ;
struct TYPE_5__ {int num_mtpts; } ;
struct hns_roce_dev {TYPE_3__ mr_table; int ib_dev; TYPE_2__ caps; scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 long HNS_ROCE_V1_FREE_MR_TIMEOUT_MSECS ;
 scalar_t__ HNS_ROCE_V1_FREE_MR_WAIT_VALUE ;
 int INIT_WORK (int *,int ) ;
 int dev_dbg (struct device*,char*,int ,scalar_t__) ;
 int dev_warn (struct device*,char*,...) ;
 int dma_free_coherent (struct device*,int,int ,int ) ;
 int hns_roce_bitmap_free (int *,int,int ) ;
 scalar_t__ hns_roce_hw2sw_mpt (struct hns_roce_dev*,int *,int) ;
 int hns_roce_v1_mr_free_work_fn ;
 int ib_umem_page_count (int ) ;
 int ib_umem_release (int ) ;
 int init_completion (struct completion*) ;
 unsigned long jiffies ;
 scalar_t__ jiffies_to_usecs (unsigned long) ;
 int key_to_hw_index (int ) ;
 int kfree (struct hns_roce_mr*) ;
 struct hns_roce_mr_free_work* kzalloc (int,int ) ;
 int msleep (scalar_t__) ;
 int queue_work (int ,int *) ;
 scalar_t__ try_wait_for_completion (struct completion*) ;

__attribute__((used)) static int hns_roce_v1_dereg_mr(struct hns_roce_dev *hr_dev,
    struct hns_roce_mr *mr, struct ib_udata *udata)
{
 struct device *dev = &hr_dev->pdev->dev;
 struct hns_roce_mr_free_work *mr_work;
 struct hns_roce_free_mr *free_mr;
 struct hns_roce_v1_priv *priv;
 struct completion comp;
 long end = HNS_ROCE_V1_FREE_MR_TIMEOUT_MSECS;
 unsigned long start = jiffies;
 int npages;
 int ret = 0;

 priv = (struct hns_roce_v1_priv *)hr_dev->priv;
 free_mr = &priv->free_mr;

 if (mr->enabled) {
  if (hns_roce_hw2sw_mpt(hr_dev, ((void*)0), key_to_hw_index(mr->key)
           & (hr_dev->caps.num_mtpts - 1)))
   dev_warn(dev, "HW2SW_MPT failed!\n");
 }

 mr_work = kzalloc(sizeof(*mr_work), GFP_KERNEL);
 if (!mr_work) {
  ret = -ENOMEM;
  goto free_mr;
 }

 INIT_WORK(&(mr_work->work), hns_roce_v1_mr_free_work_fn);

 mr_work->ib_dev = &(hr_dev->ib_dev);
 mr_work->comp = &comp;
 mr_work->comp_flag = 1;
 mr_work->mr = (void *)mr;
 init_completion(mr_work->comp);

 queue_work(free_mr->free_mr_wq, &(mr_work->work));

 while (end > 0) {
  if (try_wait_for_completion(&comp))
   goto free_mr;
  msleep(HNS_ROCE_V1_FREE_MR_WAIT_VALUE);
  end -= HNS_ROCE_V1_FREE_MR_WAIT_VALUE;
 }

 mr_work->comp_flag = 0;
 if (try_wait_for_completion(&comp))
  goto free_mr;

 dev_warn(dev, "Free mr work 0x%x over 50s and failed!\n", mr->key);
 ret = -ETIMEDOUT;

free_mr:
 dev_dbg(dev, "Free mr 0x%x use 0x%x us.\n",
  mr->key, jiffies_to_usecs(jiffies) - jiffies_to_usecs(start));

 if (mr->size != ~0ULL) {
  npages = ib_umem_page_count(mr->umem);
  dma_free_coherent(dev, npages * 8, mr->pbl_buf,
      mr->pbl_dma_addr);
 }

 hns_roce_bitmap_free(&hr_dev->mr_table.mtpt_bitmap,
        key_to_hw_index(mr->key), 0);

 ib_umem_release(mr->umem);

 kfree(mr);

 return ret;
}
