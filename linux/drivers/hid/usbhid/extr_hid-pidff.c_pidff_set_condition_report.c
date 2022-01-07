
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pidff_device {int * reports; int hid; TYPE_4__* set_condition; TYPE_1__* block_load; } ;
struct TYPE_8__ {TYPE_2__* condition; } ;
struct ff_effect {TYPE_3__ u; } ;
struct TYPE_9__ {int* value; } ;
struct TYPE_7__ {int deadband; int left_saturation; int right_saturation; int left_coeff; int right_coeff; int center; } ;
struct TYPE_6__ {int* value; } ;


 int HID_REQ_SET_REPORT ;
 size_t PID_CP_OFFSET ;
 size_t PID_DEAD_BAND ;
 size_t PID_EFFECT_BLOCK_INDEX ;
 size_t PID_NEG_COEFFICIENT ;
 size_t PID_NEG_SATURATION ;
 size_t PID_PARAM_BLOCK_OFFSET ;
 size_t PID_POS_COEFFICIENT ;
 size_t PID_POS_SATURATION ;
 size_t PID_SET_CONDITION ;
 int hid_hw_request (int ,int ,int ) ;
 int pidff_set (TYPE_4__*,int ) ;
 int pidff_set_signed (TYPE_4__*,int ) ;

__attribute__((used)) static void pidff_set_condition_report(struct pidff_device *pidff,
           struct ff_effect *effect)
{
 int i;

 pidff->set_condition[PID_EFFECT_BLOCK_INDEX].value[0] =
  pidff->block_load[PID_EFFECT_BLOCK_INDEX].value[0];

 for (i = 0; i < 2; i++) {
  pidff->set_condition[PID_PARAM_BLOCK_OFFSET].value[0] = i;
  pidff_set_signed(&pidff->set_condition[PID_CP_OFFSET],
     effect->u.condition[i].center);
  pidff_set_signed(&pidff->set_condition[PID_POS_COEFFICIENT],
     effect->u.condition[i].right_coeff);
  pidff_set_signed(&pidff->set_condition[PID_NEG_COEFFICIENT],
     effect->u.condition[i].left_coeff);
  pidff_set(&pidff->set_condition[PID_POS_SATURATION],
     effect->u.condition[i].right_saturation);
  pidff_set(&pidff->set_condition[PID_NEG_SATURATION],
     effect->u.condition[i].left_saturation);
  pidff_set(&pidff->set_condition[PID_DEAD_BAND],
     effect->u.condition[i].deadband);
  hid_hw_request(pidff->hid, pidff->reports[PID_SET_CONDITION],
    HID_REQ_SET_REPORT);
 }
}
