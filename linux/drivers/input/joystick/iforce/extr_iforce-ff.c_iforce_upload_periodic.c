
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct resource {int start; } ;
struct iforce_core_effect {int flags; struct resource mod2_chunk; struct resource mod1_chunk; } ;
struct iforce {struct iforce_core_effect* core_effects; } ;
struct TYPE_10__ {int interval; int button; } ;
struct TYPE_9__ {int delay; int length; } ;
struct TYPE_6__ {int fade_level; int fade_length; int attack_level; int attack_length; } ;
struct TYPE_7__ {int waveform; TYPE_1__ envelope; int phase; int period; int offset; int magnitude; } ;
struct TYPE_8__ {TYPE_2__ periodic; } ;
struct ff_effect {int id; int direction; TYPE_5__ trigger; TYPE_4__ replay; TYPE_3__ u; } ;


 int FF_MOD1_IS_USED ;
 int FF_MOD2_IS_USED ;





 int make_core (struct iforce*,int,int ,int ,int,int,int ,int ,int ,int ,int ) ;
 int make_envelope_modifier (struct iforce*,struct resource*,int ,int ,int ,int ,int ) ;
 int make_period_modifier (struct iforce*,struct resource*,int ,int ,int ,int ,int ) ;
 scalar_t__ need_core (struct ff_effect*,struct ff_effect*) ;
 scalar_t__ need_envelope_modifier (struct iforce*,struct ff_effect*,struct ff_effect*) ;
 scalar_t__ need_period_modifier (struct iforce*,struct ff_effect*,struct ff_effect*) ;
 int set_bit (int ,int ) ;

int iforce_upload_periodic(struct iforce *iforce, struct ff_effect *effect, struct ff_effect *old)
{
 u8 wave_code;
 int core_id = effect->id;
 struct iforce_core_effect* core_effect = iforce->core_effects + core_id;
 struct resource* mod1_chunk = &(iforce->core_effects[core_id].mod1_chunk);
 struct resource* mod2_chunk = &(iforce->core_effects[core_id].mod2_chunk);
 int param1_err = 1;
 int param2_err = 1;
 int core_err = 0;

 if (!old || need_period_modifier(iforce, old, effect)) {
  param1_err = make_period_modifier(iforce, mod1_chunk,
   old != ((void*)0),
   effect->u.periodic.magnitude, effect->u.periodic.offset,
   effect->u.periodic.period, effect->u.periodic.phase);
  if (param1_err)
   return param1_err;
  set_bit(FF_MOD1_IS_USED, core_effect->flags);
 }

 if (!old || need_envelope_modifier(iforce, old, effect)) {
  param2_err = make_envelope_modifier(iforce, mod2_chunk,
   old !=((void*)0),
   effect->u.periodic.envelope.attack_length,
   effect->u.periodic.envelope.attack_level,
   effect->u.periodic.envelope.fade_length,
   effect->u.periodic.envelope.fade_level);
  if (param2_err)
   return param2_err;
  set_bit(FF_MOD2_IS_USED, core_effect->flags);
 }

 switch (effect->u.periodic.waveform) {
 case 129: wave_code = 0x20; break;
 case 128: wave_code = 0x21; break;
 case 130: wave_code = 0x22; break;
 case 131: wave_code = 0x23; break;
 case 132: wave_code = 0x24; break;
 default: wave_code = 0x20; break;
 }

 if (!old || need_core(old, effect)) {
  core_err = make_core(iforce, effect->id,
   mod1_chunk->start,
   mod2_chunk->start,
   wave_code,
   0x20,
   effect->replay.length,
   effect->replay.delay,
   effect->trigger.button,
   effect->trigger.interval,
   effect->direction);
 }







 return core_err < 0 ? core_err : (param1_err && param2_err);
}
