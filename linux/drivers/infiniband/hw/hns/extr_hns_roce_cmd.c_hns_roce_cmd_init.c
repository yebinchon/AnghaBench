
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; int max_cmds; scalar_t__ use_events; int poll_sem; int hcr_mutex; } ;
struct hns_roce_dev {TYPE_1__ cmd; struct device* dev; } ;
struct device {int dummy; } ;


 int CMD_MAX_NUM ;
 int ENOMEM ;
 int HNS_ROCE_MAILBOX_SIZE ;
 int dma_pool_create (char*,struct device*,int ,int ,int ) ;
 int mutex_init (int *) ;
 int sema_init (int *,int) ;

int hns_roce_cmd_init(struct hns_roce_dev *hr_dev)
{
 struct device *dev = hr_dev->dev;

 mutex_init(&hr_dev->cmd.hcr_mutex);
 sema_init(&hr_dev->cmd.poll_sem, 1);
 hr_dev->cmd.use_events = 0;
 hr_dev->cmd.max_cmds = CMD_MAX_NUM;
 hr_dev->cmd.pool = dma_pool_create("hns_roce_cmd", dev,
        HNS_ROCE_MAILBOX_SIZE,
        HNS_ROCE_MAILBOX_SIZE, 0);
 if (!hr_dev->cmd.pool)
  return -ENOMEM;

 return 0;
}
