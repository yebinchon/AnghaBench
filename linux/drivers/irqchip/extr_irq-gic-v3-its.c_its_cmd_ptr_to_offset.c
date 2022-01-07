
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct its_node {struct its_cmd_block* cmd_base; } ;
struct its_cmd_block {int dummy; } ;



__attribute__((used)) static u64 its_cmd_ptr_to_offset(struct its_node *its,
     struct its_cmd_block *ptr)
{
 return (ptr - its->cmd_base) * sizeof(*ptr);
}
