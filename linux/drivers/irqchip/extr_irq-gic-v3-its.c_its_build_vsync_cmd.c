
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {int vpe_id; } ;
struct its_node {int dummy; } ;
struct its_cmd_block {int dummy; } ;


 int GITS_CMD_VSYNC ;
 int its_encode_cmd (struct its_cmd_block*,int ) ;
 int its_encode_vpeid (struct its_cmd_block*,int ) ;
 int its_fixup_cmd (struct its_cmd_block*) ;

__attribute__((used)) static void its_build_vsync_cmd(struct its_node *its,
    struct its_cmd_block *sync_cmd,
    struct its_vpe *sync_vpe)
{
 its_encode_cmd(sync_cmd, GITS_CMD_VSYNC);
 its_encode_vpeid(sync_cmd, sync_vpe->vpe_id);

 its_fixup_cmd(sync_cmd);
}
