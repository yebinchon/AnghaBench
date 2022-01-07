
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {int dummy; } ;


 int GEN6_DISABLE_CMD_IRQ ;
 int GEN6_ENABLE_CMD_IRQ ;
 int cyapa_gen6_config_dev_irq (struct cyapa*,int ) ;
 int cyapa_pip_set_proximity (struct cyapa*,int) ;

__attribute__((used)) static int cyapa_gen6_set_proximity(struct cyapa *cyapa, bool enable)
{
 int error;

 cyapa_gen6_config_dev_irq(cyapa, GEN6_DISABLE_CMD_IRQ);
 error = cyapa_pip_set_proximity(cyapa, enable);
 cyapa_gen6_config_dev_irq(cyapa, GEN6_ENABLE_CMD_IRQ);

 return error;
}
