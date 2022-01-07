
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct ib_mw {int type; int rkey; } ;
struct hns_roce_mw {struct ib_mw ibmw; int pbl_buf_pg_sz; int pbl_ba_pg_sz; int pbl_hop_num; int pdn; int rkey; } ;
struct TYPE_5__ {int pbl_buf_pg_sz; int pbl_ba_pg_sz; int pbl_hop_num; } ;
struct TYPE_4__ {int mtpt_bitmap; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__ mr_table; } ;
typedef enum ib_mw_type { ____Placeholder_ib_mw_type } ib_mw_type ;
struct TYPE_6__ {int pdn; } ;


 int ENOMEM ;
 struct ib_mw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int hns_roce_bitmap_alloc (int *,unsigned long*) ;
 int hns_roce_mw_enable (struct hns_roce_dev*,struct hns_roce_mw*) ;
 int hns_roce_mw_free (struct hns_roce_dev*,struct hns_roce_mw*) ;
 int hw_index_to_key (unsigned long) ;
 int kfree (struct hns_roce_mw*) ;
 struct hns_roce_mw* kmalloc (int,int ) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 TYPE_3__* to_hr_pd (struct ib_pd*) ;

struct ib_mw *hns_roce_alloc_mw(struct ib_pd *ib_pd, enum ib_mw_type type,
    struct ib_udata *udata)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ib_pd->device);
 struct hns_roce_mw *mw;
 unsigned long index = 0;
 int ret;

 mw = kmalloc(sizeof(*mw), GFP_KERNEL);
 if (!mw)
  return ERR_PTR(-ENOMEM);


 ret = hns_roce_bitmap_alloc(&hr_dev->mr_table.mtpt_bitmap, &index);
 if (ret)
  goto err_bitmap;

 mw->rkey = hw_index_to_key(index);

 mw->ibmw.rkey = mw->rkey;
 mw->ibmw.type = type;
 mw->pdn = to_hr_pd(ib_pd)->pdn;
 mw->pbl_hop_num = hr_dev->caps.pbl_hop_num;
 mw->pbl_ba_pg_sz = hr_dev->caps.pbl_ba_pg_sz;
 mw->pbl_buf_pg_sz = hr_dev->caps.pbl_buf_pg_sz;

 ret = hns_roce_mw_enable(hr_dev, mw);
 if (ret)
  goto err_mw;

 return &mw->ibmw;

err_mw:
 hns_roce_mw_free(hr_dev, mw);

err_bitmap:
 kfree(mw);

 return ERR_PTR(ret);
}
