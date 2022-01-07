
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ib_udata {int dummy; } ;
struct ib_mr {int device; } ;
struct hns_roce_mr {unsigned long long size; int * umem; int pbl_dma_addr; int pbl_buf; } ;
struct TYPE_4__ {scalar_t__ pbl_hop_num; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__* hw; struct device* dev; } ;
struct hns_roce_cmd_mailbox {int buf; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* rereg_write_mtpt ) (struct hns_roce_dev*,struct hns_roce_mr*,int,int ,int,int ,int ,int ) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_free_coherent (struct device*,int,int ,int ) ;
 int hns_roce_ib_umem_write_mr (struct hns_roce_dev*,struct hns_roce_mr*,int *) ;
 int hns_roce_mhop_alloc (struct hns_roce_dev*,int,struct hns_roce_mr*) ;
 int hns_roce_mhop_free (struct hns_roce_dev*,struct hns_roce_mr*) ;
 int * ib_umem_get (struct ib_udata*,int ,int ,int,int ) ;
 int ib_umem_page_count (int *) ;
 int ib_umem_release (int *) ;
 int stub1 (struct hns_roce_dev*,struct hns_roce_mr*,int,int ,int,int ,int ,int ) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 struct hns_roce_mr* to_hr_mr (struct ib_mr*) ;

__attribute__((used)) static int rereg_mr_trans(struct ib_mr *ibmr, int flags,
     u64 start, u64 length,
     u64 virt_addr, int mr_access_flags,
     struct hns_roce_cmd_mailbox *mailbox,
     u32 pdn, struct ib_udata *udata)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibmr->device);
 struct hns_roce_mr *mr = to_hr_mr(ibmr);
 struct device *dev = hr_dev->dev;
 int npages;
 int ret;

 if (mr->size != ~0ULL) {
  npages = ib_umem_page_count(mr->umem);

  if (hr_dev->caps.pbl_hop_num)
   hns_roce_mhop_free(hr_dev, mr);
  else
   dma_free_coherent(dev, npages * 8,
       mr->pbl_buf, mr->pbl_dma_addr);
 }
 ib_umem_release(mr->umem);

 mr->umem = ib_umem_get(udata, start, length, mr_access_flags, 0);
 if (IS_ERR(mr->umem)) {
  ret = PTR_ERR(mr->umem);
  mr->umem = ((void*)0);
  return -ENOMEM;
 }
 npages = ib_umem_page_count(mr->umem);

 if (hr_dev->caps.pbl_hop_num) {
  ret = hns_roce_mhop_alloc(hr_dev, npages, mr);
  if (ret)
   goto release_umem;
 } else {
  mr->pbl_buf = dma_alloc_coherent(dev, npages * 8,
       &(mr->pbl_dma_addr),
       GFP_KERNEL);
  if (!mr->pbl_buf) {
   ret = -ENOMEM;
   goto release_umem;
  }
 }

 ret = hr_dev->hw->rereg_write_mtpt(hr_dev, mr, flags, pdn,
        mr_access_flags, virt_addr,
        length, mailbox->buf);
 if (ret)
  goto release_umem;


 ret = hns_roce_ib_umem_write_mr(hr_dev, mr, mr->umem);
 if (ret) {
  if (mr->size != ~0ULL) {
   npages = ib_umem_page_count(mr->umem);

   if (hr_dev->caps.pbl_hop_num)
    hns_roce_mhop_free(hr_dev, mr);
   else
    dma_free_coherent(dev, npages * 8,
        mr->pbl_buf,
        mr->pbl_dma_addr);
  }

  goto release_umem;
 }

 return 0;

release_umem:
 ib_umem_release(mr->umem);
 return ret;

}
