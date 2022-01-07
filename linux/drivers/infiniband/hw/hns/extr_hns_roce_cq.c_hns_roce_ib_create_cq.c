
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_cq_init_attr {int comp_vector; int cqe; } ;
struct ib_cq {int device; } ;
struct hns_roce_ib_create_cq_resp {int cqn; } ;
struct TYPE_4__ {int max_cqes; scalar_t__ min_cqes; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct TYPE_6__ {int hr_mtt; } ;
struct TYPE_5__ {int cqe; } ;
struct hns_roce_cq {int cq_depth; int cqn; int event; int comp; scalar_t__* tptr_addr; TYPE_3__ hr_buf; int lock; TYPE_2__ ib_cq; } ;
struct device {int dummy; } ;
typedef int resp ;


 int EINVAL ;
 int create_kernel_cq (struct hns_roce_dev*,struct hns_roce_cq*,int) ;
 int create_user_cq (struct hns_roce_dev*,struct hns_roce_cq*,struct ib_udata*,struct hns_roce_ib_create_cq_resp*,int) ;
 int destroy_kernel_cq (struct hns_roce_dev*,struct hns_roce_cq*) ;
 int destroy_user_cq (struct hns_roce_dev*,struct hns_roce_cq*,struct ib_udata*,struct hns_roce_ib_create_cq_resp*) ;
 int dev_err (struct device*,char*,...) ;
 int hns_roce_cq_alloc (struct hns_roce_dev*,int,int *,struct hns_roce_cq*,int) ;
 int hns_roce_free_cq (struct hns_roce_dev*,struct hns_roce_cq*) ;
 int hns_roce_ib_cq_comp ;
 int hns_roce_ib_cq_event ;
 int ib_copy_to_udata (struct ib_udata*,struct hns_roce_ib_create_cq_resp*,int) ;
 int max (int,scalar_t__) ;
 int roundup_pow_of_two (unsigned int) ;
 int spin_lock_init (int *) ;
 struct hns_roce_cq* to_hr_cq (struct ib_cq*) ;
 struct hns_roce_dev* to_hr_dev (int ) ;

int hns_roce_ib_create_cq(struct ib_cq *ib_cq,
     const struct ib_cq_init_attr *attr,
     struct ib_udata *udata)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ib_cq->device);
 struct device *dev = hr_dev->dev;
 struct hns_roce_ib_create_cq_resp resp = {};
 struct hns_roce_cq *hr_cq = to_hr_cq(ib_cq);
 int vector = attr->comp_vector;
 int cq_entries = attr->cqe;
 int ret;

 if (cq_entries < 1 || cq_entries > hr_dev->caps.max_cqes) {
  dev_err(dev, "Creat CQ failed. entries=%d, max=%d\n",
   cq_entries, hr_dev->caps.max_cqes);
  return -EINVAL;
 }

 if (hr_dev->caps.min_cqes)
  cq_entries = max(cq_entries, hr_dev->caps.min_cqes);

 cq_entries = roundup_pow_of_two((unsigned int)cq_entries);
 hr_cq->ib_cq.cqe = cq_entries - 1;
 spin_lock_init(&hr_cq->lock);

 if (udata) {
  ret = create_user_cq(hr_dev, hr_cq, udata, &resp, cq_entries);
  if (ret) {
   dev_err(dev, "Create cq failed in user mode!\n");
   goto err_cq;
  }
 } else {
  ret = create_kernel_cq(hr_dev, hr_cq, cq_entries);
  if (ret) {
   dev_err(dev, "Create cq failed in kernel mode!\n");
   goto err_cq;
  }
 }


 ret = hns_roce_cq_alloc(hr_dev, cq_entries, &hr_cq->hr_buf.hr_mtt,
    hr_cq, vector);
 if (ret) {
  dev_err(dev, "Creat CQ .Failed to cq_alloc.\n");
  goto err_dbmap;
 }







 if (!udata && hr_cq->tptr_addr)
  *hr_cq->tptr_addr = 0;


 hr_cq->comp = hns_roce_ib_cq_comp;
 hr_cq->event = hns_roce_ib_cq_event;
 hr_cq->cq_depth = cq_entries;

 if (udata) {
  resp.cqn = hr_cq->cqn;
  ret = ib_copy_to_udata(udata, &resp, sizeof(resp));
  if (ret)
   goto err_cqc;
 }

 return 0;

err_cqc:
 hns_roce_free_cq(hr_dev, hr_cq);

err_dbmap:
 if (udata)
  destroy_user_cq(hr_dev, hr_cq, udata, &resp);
 else
  destroy_kernel_cq(hr_dev, hr_cq);

err_cq:
 return ret;
}
