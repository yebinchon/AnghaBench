
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_node {int dummy; } ;
struct its_collection {int target_address; } ;
struct its_cmd_block {int dummy; } ;


 int GITS_CMD_SYNC ;
 int its_encode_cmd (struct its_cmd_block*,int ) ;
 int its_encode_target (struct its_cmd_block*,int ) ;
 int its_fixup_cmd (struct its_cmd_block*) ;

__attribute__((used)) static void its_build_sync_cmd(struct its_node *its,
          struct its_cmd_block *sync_cmd,
          struct its_collection *sync_col)
{
 its_encode_cmd(sync_cmd, GITS_CMD_SYNC);
 its_encode_target(sync_cmd, sync_col->target_address);

 its_fixup_cmd(sync_cmd);
}
