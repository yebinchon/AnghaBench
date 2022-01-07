
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_node {int cmd_write; int cmd_base; scalar_t__ base; } ;
struct its_cmd_block {int dummy; } ;


 scalar_t__ GITS_CREADR ;
 int ITS_CMD_QUEUE_NR_ENTRIES ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int its_queue_full(struct its_node *its)
{
 int widx;
 int ridx;

 widx = its->cmd_write - its->cmd_base;
 ridx = readl_relaxed(its->base + GITS_CREADR) / sizeof(struct its_cmd_block);


 if (((widx + 1) % ITS_CMD_QUEUE_NR_ENTRIES) == ridx)
  return 1;

 return 0;
}
