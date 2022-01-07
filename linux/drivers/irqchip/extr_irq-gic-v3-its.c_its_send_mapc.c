
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_node {int dummy; } ;
struct its_collection {int dummy; } ;
struct TYPE_2__ {int valid; struct its_collection* col; } ;
struct its_cmd_desc {TYPE_1__ its_mapc_cmd; } ;


 int its_build_mapc_cmd ;
 int its_send_single_command (struct its_node*,int ,struct its_cmd_desc*) ;

__attribute__((used)) static void its_send_mapc(struct its_node *its, struct its_collection *col,
     int valid)
{
 struct its_cmd_desc desc;

 desc.its_mapc_cmd.col = col;
 desc.its_mapc_cmd.valid = !!valid;

 its_send_single_command(its, its_build_mapc_cmd, &desc);
}
