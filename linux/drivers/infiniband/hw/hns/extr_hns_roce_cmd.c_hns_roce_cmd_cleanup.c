
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; } ;
struct hns_roce_dev {TYPE_1__ cmd; } ;


 int dma_pool_destroy (int ) ;

void hns_roce_cmd_cleanup(struct hns_roce_dev *hr_dev)
{
 dma_pool_destroy(hr_dev->cmd.pool);
}
