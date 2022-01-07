
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_vpe {int dummy; } ;
struct its_node {int dummy; } ;
struct TYPE_2__ {struct its_vpe* vpe; } ;
struct its_cmd_desc {TYPE_1__ its_vinvall_cmd; } ;


 int its_build_vinvall_cmd ;
 int its_send_single_vcommand (struct its_node*,int ,struct its_cmd_desc*) ;

__attribute__((used)) static void its_send_vinvall(struct its_node *its, struct its_vpe *vpe)
{
 struct its_cmd_desc desc;

 desc.its_vinvall_cmd.vpe = vpe;
 its_send_single_vcommand(its, its_build_vinvall_cmd, &desc);
}
