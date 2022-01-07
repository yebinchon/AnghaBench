
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pidff_device {int * reports; int hid; TYPE_2__* set_envelope; TYPE_1__* block_load; } ;
struct ff_envelope {int attack_level; int fade_level; void* fade_length; void* attack_length; } ;
struct TYPE_4__ {void** value; int field; } ;
struct TYPE_3__ {void** value; } ;


 int HID_REQ_SET_REPORT ;
 size_t PID_ATTACK_LEVEL ;
 size_t PID_ATTACK_TIME ;
 size_t PID_EFFECT_BLOCK_INDEX ;
 size_t PID_FADE_LEVEL ;
 size_t PID_FADE_TIME ;
 size_t PID_SET_ENVELOPE ;
 int hid_dbg (int ,char*,int,void*) ;
 int hid_hw_request (int ,int ,int ) ;
 void* pidff_rescale (int,int,int ) ;

__attribute__((used)) static void pidff_set_envelope_report(struct pidff_device *pidff,
          struct ff_envelope *envelope)
{
 pidff->set_envelope[PID_EFFECT_BLOCK_INDEX].value[0] =
     pidff->block_load[PID_EFFECT_BLOCK_INDEX].value[0];

 pidff->set_envelope[PID_ATTACK_LEVEL].value[0] =
     pidff_rescale(envelope->attack_level >
     0x7fff ? 0x7fff : envelope->attack_level, 0x7fff,
     pidff->set_envelope[PID_ATTACK_LEVEL].field);
 pidff->set_envelope[PID_FADE_LEVEL].value[0] =
     pidff_rescale(envelope->fade_level >
     0x7fff ? 0x7fff : envelope->fade_level, 0x7fff,
     pidff->set_envelope[PID_FADE_LEVEL].field);

 pidff->set_envelope[PID_ATTACK_TIME].value[0] = envelope->attack_length;
 pidff->set_envelope[PID_FADE_TIME].value[0] = envelope->fade_length;

 hid_dbg(pidff->hid, "attack %u => %d\n",
  envelope->attack_level,
  pidff->set_envelope[PID_ATTACK_LEVEL].value[0]);

 hid_hw_request(pidff->hid, pidff->reports[PID_SET_ENVELOPE],
   HID_REQ_SET_REPORT);
}
