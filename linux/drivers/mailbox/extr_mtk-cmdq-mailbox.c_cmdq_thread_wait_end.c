
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct cmdq_thread {scalar_t__ base; TYPE_2__* chan; } ;
struct TYPE_4__ {TYPE_1__* mbox; } ;
struct TYPE_3__ {struct device* dev; } ;


 scalar_t__ CMDQ_THR_CURR_ADDR ;
 int dev_err (struct device*,char*) ;
 scalar_t__ readl_poll_timeout_atomic (scalar_t__,unsigned long,int,int,int) ;

__attribute__((used)) static void cmdq_thread_wait_end(struct cmdq_thread *thread,
     unsigned long end_pa)
{
 struct device *dev = thread->chan->mbox->dev;
 unsigned long curr_pa;

 if (readl_poll_timeout_atomic(thread->base + CMDQ_THR_CURR_ADDR,
   curr_pa, curr_pa == end_pa, 1, 20))
  dev_err(dev, "GCE thread cannot run to end.\n");
}
