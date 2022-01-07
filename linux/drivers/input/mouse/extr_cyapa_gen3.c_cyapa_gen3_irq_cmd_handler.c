
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {scalar_t__ gen; scalar_t__ operational; } ;


 scalar_t__ CYAPA_GEN3 ;

__attribute__((used)) static bool cyapa_gen3_irq_cmd_handler(struct cyapa *cyapa)
{

 if (cyapa->gen != CYAPA_GEN3)
  return 1;

 if (cyapa->operational)
  return 1;
 return 0;
}
