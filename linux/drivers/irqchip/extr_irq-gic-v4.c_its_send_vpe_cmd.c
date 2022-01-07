
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {int irq; } ;
struct its_cmd_info {int dummy; } ;


 int irq_set_vcpu_affinity (int ,struct its_cmd_info*) ;

__attribute__((used)) static int its_send_vpe_cmd(struct its_vpe *vpe, struct its_cmd_info *info)
{
 return irq_set_vcpu_affinity(vpe->irq, info);
}
