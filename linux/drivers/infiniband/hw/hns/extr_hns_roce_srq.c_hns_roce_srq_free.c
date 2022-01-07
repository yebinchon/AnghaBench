
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_srq_table {int bitmap; int table; int xa; } ;
struct hns_roce_srq {int srqn; int free; int refcount; } ;
struct hns_roce_dev {int dev; struct hns_roce_srq_table srq_table; } ;


 int BITMAP_NO_RR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int dev_err (int ,char*,int,int ) ;
 int hns_roce_bitmap_free (int *,int ,int ) ;
 int hns_roce_hw2sw_srq (struct hns_roce_dev*,int *,int ) ;
 int hns_roce_table_put (struct hns_roce_dev*,int *,int ) ;
 int wait_for_completion (int *) ;
 int xa_erase (int *,int ) ;

__attribute__((used)) static void hns_roce_srq_free(struct hns_roce_dev *hr_dev,
         struct hns_roce_srq *srq)
{
 struct hns_roce_srq_table *srq_table = &hr_dev->srq_table;
 int ret;

 ret = hns_roce_hw2sw_srq(hr_dev, ((void*)0), srq->srqn);
 if (ret)
  dev_err(hr_dev->dev, "HW2SW_SRQ failed (%d) for CQN %06lx\n",
   ret, srq->srqn);

 xa_erase(&srq_table->xa, srq->srqn);

 if (atomic_dec_and_test(&srq->refcount))
  complete(&srq->free);
 wait_for_completion(&srq->free);

 hns_roce_table_put(hr_dev, &srq_table->table, srq->srqn);
 hns_roce_bitmap_free(&srq_table->bitmap, srq->srqn, BITMAP_NO_RR);
}
