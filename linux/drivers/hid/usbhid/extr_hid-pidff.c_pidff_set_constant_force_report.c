
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pidff_device {int * reports; int hid; TYPE_4__* set_constant; TYPE_3__* block_load; } ;
struct TYPE_5__ {int level; } ;
struct TYPE_6__ {TYPE_1__ constant; } ;
struct ff_effect {TYPE_2__ u; } ;
struct TYPE_8__ {int * value; } ;
struct TYPE_7__ {int * value; } ;


 int HID_REQ_SET_REPORT ;
 size_t PID_EFFECT_BLOCK_INDEX ;
 size_t PID_MAGNITUDE ;
 size_t PID_SET_CONSTANT ;
 int hid_hw_request (int ,int ,int ) ;
 int pidff_set_signed (TYPE_4__*,int ) ;

__attribute__((used)) static void pidff_set_constant_force_report(struct pidff_device *pidff,
         struct ff_effect *effect)
{
 pidff->set_constant[PID_EFFECT_BLOCK_INDEX].value[0] =
  pidff->block_load[PID_EFFECT_BLOCK_INDEX].value[0];
 pidff_set_signed(&pidff->set_constant[PID_MAGNITUDE],
    effect->u.constant.level);

 hid_hw_request(pidff->hid, pidff->reports[PID_SET_CONSTANT],
   HID_REQ_SET_REPORT);
}
