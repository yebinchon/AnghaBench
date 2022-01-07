
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_node {int dummy; } ;
struct its_collection {int target_address; int col_id; } ;
struct TYPE_2__ {struct its_collection* col; int valid; } ;
struct its_cmd_desc {TYPE_1__ its_mapc_cmd; } ;
struct its_cmd_block {int dummy; } ;


 int GITS_CMD_MAPC ;
 int its_encode_cmd (struct its_cmd_block*,int ) ;
 int its_encode_collection (struct its_cmd_block*,int ) ;
 int its_encode_target (struct its_cmd_block*,int ) ;
 int its_encode_valid (struct its_cmd_block*,int ) ;
 int its_fixup_cmd (struct its_cmd_block*) ;

__attribute__((used)) static struct its_collection *its_build_mapc_cmd(struct its_node *its,
       struct its_cmd_block *cmd,
       struct its_cmd_desc *desc)
{
 its_encode_cmd(cmd, GITS_CMD_MAPC);
 its_encode_collection(cmd, desc->its_mapc_cmd.col->col_id);
 its_encode_target(cmd, desc->its_mapc_cmd.col->target_address);
 its_encode_valid(cmd, desc->its_mapc_cmd.valid);

 its_fixup_cmd(cmd);

 return desc->its_mapc_cmd.col;
}
