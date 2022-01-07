
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int config; } ;
struct its_cmd_info {TYPE_1__ member_1; int cmd_type; } ;


 int PROP_UPDATE_AND_INV_VLPI ;
 int PROP_UPDATE_VLPI ;
 int irq_set_vcpu_affinity (int,struct its_cmd_info*) ;

int its_prop_update_vlpi(int irq, u8 config, bool inv)
{
 struct its_cmd_info info = {
  .cmd_type = inv ? PROP_UPDATE_AND_INV_VLPI : PROP_UPDATE_VLPI,
  {
   .config = config,
  },
 };

 return irq_set_vcpu_affinity(irq, &info);
}
