
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct its_vpe {int dummy; } ;
struct its_node {int dummy; } ;
struct TYPE_3__ {TYPE_2__* vpe; } ;
struct its_cmd_desc {TYPE_1__ its_vinvall_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_4__ {int vpe_id; } ;


 int GITS_CMD_VINVALL ;
 int its_encode_cmd (struct its_cmd_block*,int ) ;
 int its_encode_vpeid (struct its_cmd_block*,int ) ;
 int its_fixup_cmd (struct its_cmd_block*) ;
 struct its_vpe* valid_vpe (struct its_node*,TYPE_2__*) ;

__attribute__((used)) static struct its_vpe *its_build_vinvall_cmd(struct its_node *its,
          struct its_cmd_block *cmd,
          struct its_cmd_desc *desc)
{
 its_encode_cmd(cmd, GITS_CMD_VINVALL);
 its_encode_vpeid(cmd, desc->its_vinvall_cmd.vpe->vpe_id);

 its_fixup_cmd(cmd);

 return valid_vpe(its, desc->its_vinvall_cmd.vpe);
}
