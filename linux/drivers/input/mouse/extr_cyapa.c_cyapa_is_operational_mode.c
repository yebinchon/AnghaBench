
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {scalar_t__ gen; scalar_t__ state; } ;


 scalar_t__ CYAPA_GEN3 ;
 scalar_t__ CYAPA_STATE_OP ;
 scalar_t__ cyapa_is_pip_app_mode (struct cyapa*) ;

__attribute__((used)) static inline bool cyapa_is_operational_mode(struct cyapa *cyapa)
{
 if (cyapa_is_pip_app_mode(cyapa))
  return 1;

 if (cyapa->gen == CYAPA_GEN3 && cyapa->state == CYAPA_STATE_OP)
  return 1;

 return 0;
}
