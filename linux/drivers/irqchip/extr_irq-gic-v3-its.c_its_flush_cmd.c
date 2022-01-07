
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_node {int flags; } ;
struct its_cmd_block {int dummy; } ;


 int ITS_FLAGS_CMDQ_NEEDS_FLUSHING ;
 int dsb (int ) ;
 int gic_flush_dcache_to_poc (struct its_cmd_block*,int) ;
 int ishst ;

__attribute__((used)) static void its_flush_cmd(struct its_node *its, struct its_cmd_block *cmd)
{




 if (its->flags & ITS_FLAGS_CMDQ_NEEDS_FLUSHING)
  gic_flush_dcache_to_poc(cmd, sizeof(*cmd));
 else
  dsb(ishst);
}
