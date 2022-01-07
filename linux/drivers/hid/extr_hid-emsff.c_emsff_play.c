
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_5__ {int weak_magnitude; int strong_magnitude; } ;
struct TYPE_6__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;
struct emsff_device {TYPE_4__* report; } ;
struct TYPE_8__ {TYPE_3__** field; } ;
struct TYPE_7__ {int* value; } ;


 int HID_REQ_SET_REPORT ;
 int dbg_hid (char*,int,int) ;
 int hid_hw_request (struct hid_device*,TYPE_4__*,int ) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int emsff_play(struct input_dev *dev, void *data,
    struct ff_effect *effect)
{
 struct hid_device *hid = input_get_drvdata(dev);
 struct emsff_device *emsff = data;
 int weak, strong;

 weak = effect->u.rumble.weak_magnitude;
 strong = effect->u.rumble.strong_magnitude;

 dbg_hid("called with 0x%04x 0x%04x\n", strong, weak);

 weak = weak * 0xff / 0xffff;
 strong = strong * 0xff / 0xffff;

 emsff->report->field[0]->value[1] = weak;
 emsff->report->field[0]->value[2] = strong;

 dbg_hid("running with 0x%02x 0x%02x\n", strong, weak);
 hid_hw_request(hid, emsff->report, HID_REQ_SET_REPORT);

 return 0;
}
