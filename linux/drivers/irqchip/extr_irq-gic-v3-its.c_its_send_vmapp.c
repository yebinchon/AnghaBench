
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_vpe {size_t col_idx; } ;
struct its_node {int * collections; } ;
struct TYPE_2__ {int valid; int * col; struct its_vpe* vpe; } ;
struct its_cmd_desc {TYPE_1__ its_vmapp_cmd; } ;


 int its_build_vmapp_cmd ;
 int its_send_single_vcommand (struct its_node*,int ,struct its_cmd_desc*) ;

__attribute__((used)) static void its_send_vmapp(struct its_node *its,
      struct its_vpe *vpe, bool valid)
{
 struct its_cmd_desc desc;

 desc.its_vmapp_cmd.vpe = vpe;
 desc.its_vmapp_cmd.valid = valid;
 desc.its_vmapp_cmd.col = &its->collections[vpe->col_idx];

 its_send_single_vcommand(its, its_build_vmapp_cmd, &desc);
}
