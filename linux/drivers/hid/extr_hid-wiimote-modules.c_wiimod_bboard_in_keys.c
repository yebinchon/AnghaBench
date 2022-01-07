
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input; } ;
struct wiimote_data {TYPE_1__ extension; } ;
typedef int __u8 ;


 int BTN_A ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void wiimod_bboard_in_keys(struct wiimote_data *wdata, const __u8 *keys)
{
 input_report_key(wdata->extension.input, BTN_A,
    !!(keys[1] & 0x08));
 input_sync(wdata->extension.input);
}
