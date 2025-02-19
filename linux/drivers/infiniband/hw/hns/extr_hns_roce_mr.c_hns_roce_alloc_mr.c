
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct ib_mr {int lkey; int rkey; } ;
struct hns_roce_mr {struct ib_mr ibmr; int * umem; int key; int type; } ;
struct TYPE_3__ {int pbl_buf_pg_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;
struct TYPE_4__ {int pdn; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HNS_ROCE_FRMR_MAX_PA ;
 int IB_MR_TYPE_MEM_REG ;
 int MR_TYPE_FRMR ;
 int PAGE_SHIFT ;
 int dev_err (struct device*,char*,int) ;
 int hns_roce_mr_alloc (struct hns_roce_dev*,int ,int ,int,int ,int,struct hns_roce_mr*) ;
 int hns_roce_mr_enable (struct hns_roce_dev*,struct hns_roce_mr*) ;
 int hns_roce_mr_free (struct hns_roce_dev*,struct hns_roce_mr*) ;
 int kfree (struct hns_roce_mr*) ;
 struct hns_roce_mr* kzalloc (int,int ) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 TYPE_2__* to_hr_pd (struct ib_pd*) ;

struct ib_mr *hns_roce_alloc_mr(struct ib_pd *pd, enum ib_mr_type mr_type,
    u32 max_num_sg, struct ib_udata *udata)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(pd->device);
 struct device *dev = hr_dev->dev;
 struct hns_roce_mr *mr;
 u64 length;
 u32 page_size;
 int ret;

 page_size = 1 << (hr_dev->caps.pbl_buf_pg_sz + PAGE_SHIFT);
 length = max_num_sg * page_size;

 if (mr_type != IB_MR_TYPE_MEM_REG)
  return ERR_PTR(-EINVAL);

 if (max_num_sg > HNS_ROCE_FRMR_MAX_PA) {
  dev_err(dev, "max_num_sg larger than %d\n",
   HNS_ROCE_FRMR_MAX_PA);
  return ERR_PTR(-EINVAL);
 }

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 mr->type = MR_TYPE_FRMR;


 ret = hns_roce_mr_alloc(hr_dev, to_hr_pd(pd)->pdn, 0, length,
    0, max_num_sg, mr);
 if (ret)
  goto err_free;

 ret = hns_roce_mr_enable(hr_dev, mr);
 if (ret)
  goto err_mr;

 mr->ibmr.rkey = mr->ibmr.lkey = mr->key;
 mr->umem = ((void*)0);

 return &mr->ibmr;

err_mr:
 hns_roce_mr_free(to_hr_dev(pd->device), mr);

err_free:
 kfree(mr);
 return ERR_PTR(ret);
}
