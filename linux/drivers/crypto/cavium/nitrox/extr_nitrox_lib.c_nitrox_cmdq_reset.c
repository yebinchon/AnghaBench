
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_cmdq {int backlog_count; int pending_count; scalar_t__ write_idx; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void nitrox_cmdq_reset(struct nitrox_cmdq *cmdq)
{
 cmdq->write_idx = 0;
 atomic_set(&cmdq->pending_count, 0);
 atomic_set(&cmdq->backlog_count, 0);
}
