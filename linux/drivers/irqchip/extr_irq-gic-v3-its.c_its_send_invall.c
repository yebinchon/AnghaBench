
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_node {int dummy; } ;
struct its_collection {int dummy; } ;
struct TYPE_2__ {struct its_collection* col; } ;
struct its_cmd_desc {TYPE_1__ its_invall_cmd; } ;


 int its_build_invall_cmd ;
 int its_send_single_command (struct its_node*,int ,struct its_cmd_desc*) ;

__attribute__((used)) static void its_send_invall(struct its_node *its, struct its_collection *col)
{
 struct its_cmd_desc desc;

 desc.its_invall_cmd.col = col;

 its_send_single_command(its, its_build_invall_cmd, &desc);
}
