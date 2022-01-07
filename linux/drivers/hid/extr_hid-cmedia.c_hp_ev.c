
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct cmhid {int input_dev; } ;


 int SW_HEADPHONE_INSERT ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void hp_ev(struct hid_device *hid, struct cmhid *cm, int value)
{
 input_report_switch(cm->input_dev, SW_HEADPHONE_INSERT, value);
 input_sync(cm->input_dev);
}
