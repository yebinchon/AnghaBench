
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u8 ;
struct input_dev {TYPE_1__* ff; } ;
struct hidpp_ff_private_data {TYPE_11__* hidpp; } ;
struct TYPE_20__ {int attack_level; int attack_length; int fade_level; int fade_length; } ;
struct TYPE_21__ {int start_level; int end_level; TYPE_7__ envelope; } ;
struct TYPE_18__ {int attack_level; int attack_length; int fade_level; int fade_length; } ;
struct TYPE_19__ {int waveform; int magnitude; int offset; int period; int phase; TYPE_5__ envelope; } ;
struct TYPE_16__ {int attack_level; int attack_length; int fade_level; int fade_length; } ;
struct TYPE_17__ {int level; TYPE_3__ envelope; } ;
struct TYPE_12__ {TYPE_9__* condition; TYPE_8__ ramp; TYPE_6__ periodic; TYPE_4__ constant; } ;
struct TYPE_15__ {int length; int delay; } ;
struct ff_effect {int type; int direction; int id; TYPE_10__ u; TYPE_2__ replay; } ;
struct TYPE_22__ {int left_saturation; int left_coeff; int deadband; int center; int right_coeff; int right_saturation; } ;
struct TYPE_14__ {struct hidpp_ff_private_data* private; } ;
struct TYPE_13__ {int hid_dev; } ;


 int EINVAL ;
 int* HIDPP_FF_CONDITION_CMDS ;
 int * HIDPP_FF_CONDITION_NAMES ;
 int HIDPP_FF_DOWNLOAD_EFFECT ;
 int HIDPP_FF_EFFECT_CONSTANT ;
 int HIDPP_FF_EFFECT_PERIODIC_SAWTOOTHDOWN ;
 int HIDPP_FF_EFFECT_PERIODIC_SAWTOOTHUP ;
 int HIDPP_FF_EFFECT_PERIODIC_SINE ;
 int HIDPP_FF_EFFECT_PERIODIC_SQUARE ;
 int HIDPP_FF_EFFECT_PERIODIC_TRIANGLE ;
 int HIDPP_FF_EFFECT_RAMP ;
 int dbg_hid (char*,int,int,...) ;
 int fixp_sin16 (int) ;
 int hid_err (int ,char*,int) ;
 int hidpp_ff_queue_work (struct hidpp_ff_private_data*,int ,int ,int*,int) ;

__attribute__((used)) static int hidpp_ff_upload_effect(struct input_dev *dev, struct ff_effect *effect, struct ff_effect *old)
{
 struct hidpp_ff_private_data *data = dev->ff->private;
 u8 params[20];
 u8 size;
 int force;


 params[2] = effect->replay.length >> 8;
 params[3] = effect->replay.length & 255;
 params[4] = effect->replay.delay >> 8;
 params[5] = effect->replay.delay & 255;

 switch (effect->type) {
 case 139:
  force = (effect->u.constant.level * fixp_sin16((effect->direction * 360) >> 16)) >> 15;
  params[1] = HIDPP_FF_EFFECT_CONSTANT;
  params[6] = force >> 8;
  params[7] = force & 255;
  params[8] = effect->u.constant.envelope.attack_level >> 7;
  params[9] = effect->u.constant.envelope.attack_length >> 8;
  params[10] = effect->u.constant.envelope.attack_length & 255;
  params[11] = effect->u.constant.envelope.fade_level >> 7;
  params[12] = effect->u.constant.envelope.fade_length >> 8;
  params[13] = effect->u.constant.envelope.fade_length & 255;
  size = 14;
  dbg_hid("Uploading constant force level=%d in dir %d = %d\n",
    effect->u.constant.level,
    effect->direction, force);
  dbg_hid("          envelope attack=(%d, %d ms) fade=(%d, %d ms)\n",
    effect->u.constant.envelope.attack_level,
    effect->u.constant.envelope.attack_length,
    effect->u.constant.envelope.fade_level,
    effect->u.constant.envelope.fade_length);
  break;
 case 135:
 {
  switch (effect->u.periodic.waveform) {
  case 131:
   params[1] = HIDPP_FF_EFFECT_PERIODIC_SINE;
   break;
  case 129:
   params[1] = HIDPP_FF_EFFECT_PERIODIC_SQUARE;
   break;
  case 132:
   params[1] = HIDPP_FF_EFFECT_PERIODIC_SAWTOOTHUP;
   break;
  case 133:
   params[1] = HIDPP_FF_EFFECT_PERIODIC_SAWTOOTHDOWN;
   break;
  case 128:
   params[1] = HIDPP_FF_EFFECT_PERIODIC_TRIANGLE;
   break;
  default:
   hid_err(data->hidpp->hid_dev, "Unexpected periodic waveform type %i!\n", effect->u.periodic.waveform);
   return -EINVAL;
  }
  force = (effect->u.periodic.magnitude * fixp_sin16((effect->direction * 360) >> 16)) >> 15;
  params[6] = effect->u.periodic.magnitude >> 8;
  params[7] = effect->u.periodic.magnitude & 255;
  params[8] = effect->u.periodic.offset >> 8;
  params[9] = effect->u.periodic.offset & 255;
  params[10] = effect->u.periodic.period >> 8;
  params[11] = effect->u.periodic.period & 255;
  params[12] = effect->u.periodic.phase >> 8;
  params[13] = effect->u.periodic.phase & 255;
  params[14] = effect->u.periodic.envelope.attack_level >> 7;
  params[15] = effect->u.periodic.envelope.attack_length >> 8;
  params[16] = effect->u.periodic.envelope.attack_length & 255;
  params[17] = effect->u.periodic.envelope.fade_level >> 7;
  params[18] = effect->u.periodic.envelope.fade_length >> 8;
  params[19] = effect->u.periodic.envelope.fade_length & 255;
  size = 20;
  dbg_hid("Uploading periodic force mag=%d/dir=%d, offset=%d, period=%d ms, phase=%d\n",
    effect->u.periodic.magnitude, effect->direction,
    effect->u.periodic.offset,
    effect->u.periodic.period,
    effect->u.periodic.phase);
  dbg_hid("          envelope attack=(%d, %d ms) fade=(%d, %d ms)\n",
    effect->u.periodic.envelope.attack_level,
    effect->u.periodic.envelope.attack_length,
    effect->u.periodic.envelope.fade_level,
    effect->u.periodic.envelope.fade_length);
  break;
 }
 case 134:
  params[1] = HIDPP_FF_EFFECT_RAMP;
  force = (effect->u.ramp.start_level * fixp_sin16((effect->direction * 360) >> 16)) >> 15;
  params[6] = force >> 8;
  params[7] = force & 255;
  force = (effect->u.ramp.end_level * fixp_sin16((effect->direction * 360) >> 16)) >> 15;
  params[8] = force >> 8;
  params[9] = force & 255;
  params[10] = effect->u.ramp.envelope.attack_level >> 7;
  params[11] = effect->u.ramp.envelope.attack_length >> 8;
  params[12] = effect->u.ramp.envelope.attack_length & 255;
  params[13] = effect->u.ramp.envelope.fade_level >> 7;
  params[14] = effect->u.ramp.envelope.fade_length >> 8;
  params[15] = effect->u.ramp.envelope.fade_length & 255;
  size = 16;
  dbg_hid("Uploading ramp force level=%d -> %d in dir %d = %d\n",
    effect->u.ramp.start_level,
    effect->u.ramp.end_level,
    effect->direction, force);
  dbg_hid("          envelope attack=(%d, %d ms) fade=(%d, %d ms)\n",
    effect->u.ramp.envelope.attack_level,
    effect->u.ramp.envelope.attack_length,
    effect->u.ramp.envelope.fade_level,
    effect->u.ramp.envelope.fade_length);
  break;
 case 137:
 case 136:
 case 130:
 case 138:
  params[1] = HIDPP_FF_CONDITION_CMDS[effect->type - 130];
  params[6] = effect->u.condition[0].left_saturation >> 9;
  params[7] = (effect->u.condition[0].left_saturation >> 1) & 255;
  params[8] = effect->u.condition[0].left_coeff >> 8;
  params[9] = effect->u.condition[0].left_coeff & 255;
  params[10] = effect->u.condition[0].deadband >> 9;
  params[11] = (effect->u.condition[0].deadband >> 1) & 255;
  params[12] = effect->u.condition[0].center >> 8;
  params[13] = effect->u.condition[0].center & 255;
  params[14] = effect->u.condition[0].right_coeff >> 8;
  params[15] = effect->u.condition[0].right_coeff & 255;
  params[16] = effect->u.condition[0].right_saturation >> 9;
  params[17] = (effect->u.condition[0].right_saturation >> 1) & 255;
  size = 18;
  dbg_hid("Uploading %s force left coeff=%d, left sat=%d, right coeff=%d, right sat=%d\n",
    HIDPP_FF_CONDITION_NAMES[effect->type - 130],
    effect->u.condition[0].left_coeff,
    effect->u.condition[0].left_saturation,
    effect->u.condition[0].right_coeff,
    effect->u.condition[0].right_saturation);
  dbg_hid("          deadband=%d, center=%d\n",
    effect->u.condition[0].deadband,
    effect->u.condition[0].center);
  break;
 default:
  hid_err(data->hidpp->hid_dev, "Unexpected force type %i!\n", effect->type);
  return -EINVAL;
 }

 return hidpp_ff_queue_work(data, effect->id, HIDPP_FF_DOWNLOAD_EFFECT, params, size);
}
