
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_eq {int eqe_size; int entries; TYPE_2__* buf_list; } ;
struct hns_roce_dev {TYPE_1__* pdev; } ;
struct TYPE_4__ {int map; int buf; } ;
struct TYPE_3__ {int dev; } ;


 int HNS_ROCE_BA_SIZE ;
 int PAGE_ALIGN (int) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void hns_roce_v1_free_eq(struct hns_roce_dev *hr_dev,
    struct hns_roce_eq *eq)
{
 int npages = (PAGE_ALIGN(eq->eqe_size * eq->entries) +
        HNS_ROCE_BA_SIZE - 1) / HNS_ROCE_BA_SIZE;
 int i;

 if (!eq->buf_list)
  return;

 for (i = 0; i < npages; ++i)
  dma_free_coherent(&hr_dev->pdev->dev, HNS_ROCE_BA_SIZE,
      eq->buf_list[i].buf, eq->buf_list[i].map);

 kfree(eq->buf_list);
}
