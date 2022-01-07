
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {int dummy; } ;
struct its_cmd_info {int cmd_type; } ;


 int DESCHEDULE_VPE ;
 int SCHEDULE_VPE ;
 int WARN_ON (int ) ;
 int its_send_vpe_cmd (struct its_vpe*,struct its_cmd_info*) ;
 int preemptible () ;

int its_schedule_vpe(struct its_vpe *vpe, bool on)
{
 struct its_cmd_info info;

 WARN_ON(preemptible());

 info.cmd_type = on ? SCHEDULE_VPE : DESCHEDULE_VPE;

 return its_send_vpe_cmd(vpe, &info);
}
