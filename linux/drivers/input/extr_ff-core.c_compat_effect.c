
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fade_level; int fade_length; int attack_level; int attack_length; } ;
struct TYPE_7__ {int period; TYPE_2__ envelope; int phase; int offset; int magnitude; int waveform; } ;
struct TYPE_5__ {int strong_magnitude; int weak_magnitude; } ;
struct TYPE_8__ {TYPE_3__ periodic; TYPE_1__ rumble; } ;
struct ff_effect {int type; TYPE_4__ u; } ;
struct ff_device {int ffbit; } ;


 int EINVAL ;
 int FF_PERIODIC ;

 int FF_SINE ;
 int max (int,int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int compat_effect(struct ff_device *ff, struct ff_effect *effect)
{
 int magnitude;

 switch (effect->type) {
 case 128:
  if (!test_bit(FF_PERIODIC, ff->ffbit))
   return -EINVAL;





  magnitude = effect->u.rumble.strong_magnitude / 3 +
       effect->u.rumble.weak_magnitude / 6;

  effect->type = FF_PERIODIC;
  effect->u.periodic.waveform = FF_SINE;
  effect->u.periodic.period = 50;
  effect->u.periodic.magnitude = max(magnitude, 0x7fff);
  effect->u.periodic.offset = 0;
  effect->u.periodic.phase = 0;
  effect->u.periodic.envelope.attack_length = 0;
  effect->u.periodic.envelope.attack_level = 0;
  effect->u.periodic.envelope.fade_length = 0;
  effect->u.periodic.envelope.fade_level = 0;

  return 0;

 default:

  return 0;
 }
}
