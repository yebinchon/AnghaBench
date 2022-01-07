
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_vlpi_map {int dummy; } ;
struct TYPE_2__ {struct its_vlpi_map* map; } ;
struct its_cmd_info {TYPE_1__ member_1; int cmd_type; } ;


 int IRQ_DISABLE_UNLAZY ;
 int MAP_VLPI ;
 int irq_clear_status_flags (int,int ) ;
 int irq_set_status_flags (int,int ) ;
 int irq_set_vcpu_affinity (int,struct its_cmd_info*) ;

int its_map_vlpi(int irq, struct its_vlpi_map *map)
{
 struct its_cmd_info info = {
  .cmd_type = MAP_VLPI,
  {
   .map = map,
  },
 };
 int ret;





 irq_set_status_flags(irq, IRQ_DISABLE_UNLAZY);

 ret = irq_set_vcpu_affinity(irq, &info);
 if (ret)
  irq_clear_status_flags(irq, IRQ_DISABLE_UNLAZY);

 return ret;
}
