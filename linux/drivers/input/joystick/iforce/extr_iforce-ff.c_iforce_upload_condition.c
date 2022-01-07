
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct resource {int start; } ;
struct iforce_core_effect {int flags; struct resource mod2_chunk; struct resource mod1_chunk; } ;
struct iforce {struct iforce_core_effect* core_effects; } ;
struct TYPE_8__ {int interval; int button; } ;
struct TYPE_7__ {int delay; int length; } ;
struct TYPE_6__ {TYPE_1__* condition; } ;
struct ff_effect {int id; int type; int direction; TYPE_4__ trigger; TYPE_3__ replay; TYPE_2__ u; } ;
struct TYPE_5__ {int center; int deadband; int left_coeff; int right_coeff; int left_saturation; int right_saturation; } ;



 int FF_MOD1_IS_USED ;
 int FF_MOD2_IS_USED ;

 int make_condition_modifier (struct iforce*,struct resource*,int ,int ,int ,int ,int ,int ,int ) ;
 int make_core (struct iforce*,int,int ,int ,int,int,int ,int ,int ,int ,int ) ;
 scalar_t__ need_condition_modifier (struct iforce*,struct ff_effect*,struct ff_effect*) ;
 scalar_t__ need_core (struct ff_effect*,struct ff_effect*) ;
 int set_bit (int ,int ) ;

int iforce_upload_condition(struct iforce *iforce, struct ff_effect *effect, struct ff_effect *old)
{
 int core_id = effect->id;
 struct iforce_core_effect* core_effect = iforce->core_effects + core_id;
 struct resource* mod1_chunk = &(core_effect->mod1_chunk);
 struct resource* mod2_chunk = &(core_effect->mod2_chunk);
 u8 type;
 int param_err = 1;
 int core_err = 0;

 switch (effect->type) {
 case 128: type = 0x40; break;
 case 129: type = 0x41; break;
 default: return -1;
 }

 if (!old || need_condition_modifier(iforce, old, effect)) {
  param_err = make_condition_modifier(iforce, mod1_chunk,
   old != ((void*)0),
   effect->u.condition[0].right_saturation,
   effect->u.condition[0].left_saturation,
   effect->u.condition[0].right_coeff,
   effect->u.condition[0].left_coeff,
   effect->u.condition[0].deadband,
   effect->u.condition[0].center);
  if (param_err)
   return param_err;
  set_bit(FF_MOD1_IS_USED, core_effect->flags);

  param_err = make_condition_modifier(iforce, mod2_chunk,
   old != ((void*)0),
   effect->u.condition[1].right_saturation,
   effect->u.condition[1].left_saturation,
   effect->u.condition[1].right_coeff,
   effect->u.condition[1].left_coeff,
   effect->u.condition[1].deadband,
   effect->u.condition[1].center);
  if (param_err)
   return param_err;
  set_bit(FF_MOD2_IS_USED, core_effect->flags);

 }

 if (!old || need_core(old, effect)) {
  core_err = make_core(iforce, effect->id,
   mod1_chunk->start, mod2_chunk->start,
   type, 0xc0,
   effect->replay.length, effect->replay.delay,
   effect->trigger.button, effect->trigger.interval,
   effect->direction);
 }







 return core_err < 0 ? core_err : param_err;
}
