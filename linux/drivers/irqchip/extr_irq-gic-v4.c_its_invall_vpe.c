
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {int dummy; } ;
struct its_cmd_info {int cmd_type; } ;


 int INVALL_VPE ;
 int its_send_vpe_cmd (struct its_vpe*,struct its_cmd_info*) ;

int its_invall_vpe(struct its_vpe *vpe)
{
 struct its_cmd_info info = {
  .cmd_type = INVALL_VPE,
 };

 return its_send_vpe_cmd(vpe, &info);
}
