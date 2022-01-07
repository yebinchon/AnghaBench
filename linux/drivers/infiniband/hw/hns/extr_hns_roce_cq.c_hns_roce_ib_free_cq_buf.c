
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq_entry_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
struct hns_roce_cq_buf {int hr_buf; } ;


 int hns_roce_buf_free (struct hns_roce_dev*,int,int *) ;

__attribute__((used)) static void hns_roce_ib_free_cq_buf(struct hns_roce_dev *hr_dev,
        struct hns_roce_cq_buf *buf, int cqe)
{
 hns_roce_buf_free(hr_dev, (cqe + 1) * hr_dev->caps.cq_entry_sz,
     &buf->hr_buf);
}
