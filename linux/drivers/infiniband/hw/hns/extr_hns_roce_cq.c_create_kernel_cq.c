
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hns_roce_uar {int index; } ;
struct TYPE_4__ {int flags; } ;
struct hns_roce_dev {TYPE_1__ caps; scalar_t__ odb_offset; scalar_t__ reg_base; struct hns_roce_uar priv_uar; struct device* dev; } ;
struct TYPE_5__ {scalar_t__* db_record; } ;
struct hns_roce_cq {int db_en; TYPE_2__ db; scalar_t__ cq_db_l; int hr_buf; scalar_t__* set_ci_db; } ;
struct device {int dummy; } ;


 int DB_REG_OFFSET ;
 int HNS_ROCE_CAP_FLAG_RECORD_DB ;
 int dev_err (struct device*,char*) ;
 int hns_roce_alloc_db (struct hns_roce_dev*,TYPE_2__*,int) ;
 int hns_roce_free_db (struct hns_roce_dev*,TYPE_2__*) ;
 int hns_roce_ib_alloc_cq_buf (struct hns_roce_dev*,int *,int) ;

__attribute__((used)) static int create_kernel_cq(struct hns_roce_dev *hr_dev,
       struct hns_roce_cq *hr_cq, int cq_entries)
{
 struct device *dev = hr_dev->dev;
 struct hns_roce_uar *uar;
 int ret;

 if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_RECORD_DB) {
  ret = hns_roce_alloc_db(hr_dev, &hr_cq->db, 1);
  if (ret)
   return ret;

  hr_cq->set_ci_db = hr_cq->db.db_record;
  *hr_cq->set_ci_db = 0;
  hr_cq->db_en = 1;
 }


 ret = hns_roce_ib_alloc_cq_buf(hr_dev, &hr_cq->hr_buf, cq_entries);
 if (ret) {
  dev_err(dev, "Failed to alloc_cq_buf.\n");
  goto err_db;
 }

 uar = &hr_dev->priv_uar;
 hr_cq->cq_db_l = hr_dev->reg_base + hr_dev->odb_offset +
    DB_REG_OFFSET * uar->index;

 return 0;

err_db:
 if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_RECORD_DB)
  hns_roce_free_db(hr_dev, &hr_cq->db);

 return ret;
}
