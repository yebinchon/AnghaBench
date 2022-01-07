
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cyapa {int gen; int operational; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* operational_check ) (struct cyapa*) ;} ;





 int ENODEV ;
 TYPE_1__ cyapa_gen3_ops ;
 TYPE_1__ cyapa_gen5_ops ;
 TYPE_1__ cyapa_gen6_ops ;
 scalar_t__ cyapa_is_operational_mode (struct cyapa*) ;
 int cyapa_poll_state (struct cyapa*,int) ;
 int stub1 (struct cyapa*) ;

__attribute__((used)) static int cyapa_check_is_operational(struct cyapa *cyapa)
{
 int error;

 error = cyapa_poll_state(cyapa, 4000);
 if (error)
  return error;

 switch (cyapa->gen) {
 case 128:
  cyapa->ops = &cyapa_gen6_ops;
  break;
 case 129:
  cyapa->ops = &cyapa_gen5_ops;
  break;
 case 130:
  cyapa->ops = &cyapa_gen3_ops;
  break;
 default:
  return -ENODEV;
 }

 error = cyapa->ops->operational_check(cyapa);
 if (!error && cyapa_is_operational_mode(cyapa))
  cyapa->operational = 1;
 else
  cyapa->operational = 0;

 return error;
}
