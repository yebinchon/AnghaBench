
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ level; } ;
struct TYPE_4__ {TYPE_1__ constant; } ;
struct ff_effect {TYPE_2__ u; } ;



__attribute__((used)) static int pidff_needs_set_constant(struct ff_effect *effect,
        struct ff_effect *old)
{
 return effect->u.constant.level != old->u.constant.level;
}
