
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcmidi_snd {struct hid_report* pcmidi_report6; TYPE_1__* pk; } ;
struct hid_report {TYPE_2__** field; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {struct hid_device* hdev; } ;


 int HID_REQ_SET_REPORT ;
 int hid_hw_request (struct hid_device*,struct hid_report*,int ) ;

__attribute__((used)) static void pcmidi_submit_output_report(struct pcmidi_snd *pm, int state)
{
 struct hid_device *hdev = pm->pk->hdev;
 struct hid_report *report = pm->pcmidi_report6;
 report->field[0]->value[0] = 0x01;
 report->field[0]->value[1] = state;

 hid_hw_request(hdev, report, HID_REQ_SET_REPORT);
}
