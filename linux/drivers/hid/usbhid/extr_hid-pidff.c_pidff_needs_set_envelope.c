
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_envelope {scalar_t__ attack_level; scalar_t__ fade_level; scalar_t__ attack_length; scalar_t__ fade_length; } ;



__attribute__((used)) static int pidff_needs_set_envelope(struct ff_envelope *envelope,
        struct ff_envelope *old)
{
 return envelope->attack_level != old->attack_level ||
        envelope->fade_level != old->fade_level ||
        envelope->attack_length != old->attack_length ||
        envelope->fade_length != old->fade_length;
}
