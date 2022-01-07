
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct its_node {struct its_cmd_block* cmd_write; scalar_t__ base; } ;
struct its_cmd_block {int dummy; } ;


 scalar_t__ GITS_CWRITER ;
 int its_cmd_ptr_to_offset (struct its_node*,struct its_cmd_block*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static struct its_cmd_block *its_post_commands(struct its_node *its)
{
 u64 wr = its_cmd_ptr_to_offset(its, its->cmd_write);

 writel_relaxed(wr, its->base + GITS_CWRITER);

 return its->cmd_write;
}
