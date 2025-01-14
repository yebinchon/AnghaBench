
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_mr_table {int mtpt_table; } ;
struct hns_roce_mr {scalar_t__ type; int enabled; int key; } ;
struct TYPE_4__ {int num_mtpts; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__* hw; struct hns_roce_mr_table mr_table; struct device* dev; } ;
struct hns_roce_cmd_mailbox {int buf; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* write_mtpt ) (int ,struct hns_roce_mr*,unsigned long) ;int (* frmr_write_mtpt ) (int ,struct hns_roce_mr*) ;} ;


 scalar_t__ IS_ERR (struct hns_roce_cmd_mailbox*) ;
 scalar_t__ MR_TYPE_FRMR ;
 int PTR_ERR (struct hns_roce_cmd_mailbox*) ;
 int dev_err (struct device*,char*,...) ;
 struct hns_roce_cmd_mailbox* hns_roce_alloc_cmd_mailbox (struct hns_roce_dev*) ;
 int hns_roce_free_cmd_mailbox (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ;
 int hns_roce_sw2hw_mpt (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*,unsigned long) ;
 int hns_roce_table_get (struct hns_roce_dev*,int *,unsigned long) ;
 int hns_roce_table_put (struct hns_roce_dev*,int *,unsigned long) ;
 unsigned long key_to_hw_index (int ) ;
 int stub1 (int ,struct hns_roce_mr*,unsigned long) ;
 int stub2 (int ,struct hns_roce_mr*) ;

__attribute__((used)) static int hns_roce_mr_enable(struct hns_roce_dev *hr_dev,
         struct hns_roce_mr *mr)
{
 int ret;
 unsigned long mtpt_idx = key_to_hw_index(mr->key);
 struct device *dev = hr_dev->dev;
 struct hns_roce_cmd_mailbox *mailbox;
 struct hns_roce_mr_table *mr_table = &hr_dev->mr_table;


 ret = hns_roce_table_get(hr_dev, &mr_table->mtpt_table, mtpt_idx);
 if (ret)
  return ret;


 mailbox = hns_roce_alloc_cmd_mailbox(hr_dev);
 if (IS_ERR(mailbox)) {
  ret = PTR_ERR(mailbox);
  goto err_table;
 }

 if (mr->type != MR_TYPE_FRMR)
  ret = hr_dev->hw->write_mtpt(mailbox->buf, mr, mtpt_idx);
 else
  ret = hr_dev->hw->frmr_write_mtpt(mailbox->buf, mr);
 if (ret) {
  dev_err(dev, "Write mtpt fail!\n");
  goto err_page;
 }

 ret = hns_roce_sw2hw_mpt(hr_dev, mailbox,
     mtpt_idx & (hr_dev->caps.num_mtpts - 1));
 if (ret) {
  dev_err(dev, "SW2HW_MPT failed (%d)\n", ret);
  goto err_page;
 }

 mr->enabled = 1;
 hns_roce_free_cmd_mailbox(hr_dev, mailbox);

 return 0;

err_page:
 hns_roce_free_cmd_mailbox(hr_dev, mailbox);

err_table:
 hns_roce_table_put(hr_dev, &mr_table->mtpt_table, mtpt_idx);
 return ret;
}
