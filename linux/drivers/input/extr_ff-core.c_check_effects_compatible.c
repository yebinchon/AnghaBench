
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ waveform; } ;
struct TYPE_4__ {TYPE_1__ periodic; } ;
struct ff_effect {scalar_t__ type; TYPE_2__ u; } ;


 scalar_t__ FF_PERIODIC ;

__attribute__((used)) static inline int check_effects_compatible(struct ff_effect *e1,
        struct ff_effect *e2)
{
 return e1->type == e2->type &&
        (e1->type != FF_PERIODIC ||
  e1->u.periodic.waveform == e2->u.periodic.waveform);
}
