
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; scalar_t__ delay; } ;
struct TYPE_4__ {scalar_t__ interval; scalar_t__ button; } ;
struct ff_effect {scalar_t__ direction; TYPE_1__ replay; TYPE_2__ trigger; } ;



__attribute__((used)) static int pidff_needs_set_effect(struct ff_effect *effect,
      struct ff_effect *old)
{
 return effect->replay.length != old->replay.length ||
        effect->trigger.interval != old->trigger.interval ||
        effect->trigger.button != old->trigger.button ||
        effect->direction != old->direction ||
        effect->replay.delay != old->replay.delay;
}
