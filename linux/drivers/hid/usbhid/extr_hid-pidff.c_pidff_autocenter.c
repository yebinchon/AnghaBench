
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct pidff_device {int * reports; int hid; TYPE_3__* set_effect; int * type_id; TYPE_2__* set_effect_type; TYPE_1__* block_load; } ;
struct hid_field {int logical_minimum; } ;
struct TYPE_6__ {int* value; } ;
struct TYPE_5__ {int * value; } ;
struct TYPE_4__ {struct hid_field* field; } ;


 int HID_REQ_SET_REPORT ;
 size_t PID_DIRECTION_ENABLE ;
 size_t PID_DURATION ;
 size_t PID_EFFECT_BLOCK_INDEX ;
 size_t PID_GAIN ;
 size_t PID_SET_EFFECT ;
 size_t PID_SPRING ;
 size_t PID_START_DELAY ;
 size_t PID_TRIGGER_BUTTON ;
 size_t PID_TRIGGER_REPEAT_INT ;
 int hid_hw_request (int ,int ,int ) ;
 int pidff_playback_pid (struct pidff_device*,int,int) ;
 int pidff_set (TYPE_3__*,int ) ;

__attribute__((used)) static void pidff_autocenter(struct pidff_device *pidff, u16 magnitude)
{
 struct hid_field *field =
  pidff->block_load[PID_EFFECT_BLOCK_INDEX].field;

 if (!magnitude) {
  pidff_playback_pid(pidff, field->logical_minimum, 0);
  return;
 }

 pidff_playback_pid(pidff, field->logical_minimum, 1);

 pidff->set_effect[PID_EFFECT_BLOCK_INDEX].value[0] =
  pidff->block_load[PID_EFFECT_BLOCK_INDEX].field->logical_minimum;
 pidff->set_effect_type->value[0] = pidff->type_id[PID_SPRING];
 pidff->set_effect[PID_DURATION].value[0] = 0;
 pidff->set_effect[PID_TRIGGER_BUTTON].value[0] = 0;
 pidff->set_effect[PID_TRIGGER_REPEAT_INT].value[0] = 0;
 pidff_set(&pidff->set_effect[PID_GAIN], magnitude);
 pidff->set_effect[PID_DIRECTION_ENABLE].value[0] = 1;
 pidff->set_effect[PID_START_DELAY].value[0] = 0;

 hid_hw_request(pidff->hid, pidff->reports[PID_SET_EFFECT],
   HID_REQ_SET_REPORT);
}
