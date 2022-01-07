
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_eq {int eqe_buf_pg_sz; TYPE_2__* buf_list; } ;
struct TYPE_3__ {scalar_t__ eqe_hop_num; } ;
struct hns_roce_dev {int dev; TYPE_1__ caps; } ;
struct TYPE_4__ {int map; int buf; } ;


 int PAGE_SHIFT ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int hns_roce_mhop_free_eq (struct hns_roce_dev*,struct hns_roce_eq*) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void hns_roce_v2_free_eq(struct hns_roce_dev *hr_dev,
    struct hns_roce_eq *eq)
{
 u32 buf_chk_sz;

 buf_chk_sz = 1 << (eq->eqe_buf_pg_sz + PAGE_SHIFT);

 if (hr_dev->caps.eqe_hop_num) {
  hns_roce_mhop_free_eq(hr_dev, eq);
  return;
 }

 dma_free_coherent(hr_dev->dev, buf_chk_sz, eq->buf_list->buf,
     eq->buf_list->map);
 kfree(eq->buf_list);
}
