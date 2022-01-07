
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_device {int input; } ;


 scalar_t__ BTN_MISC ;
 scalar_t__ BTN_MOUSE ;
 int EINVAL ;
 int HIDPP_SUB_ID_MOUSE_EXTRA_BTNS ;
 int REPORT_ID_HIDPP_SHORT ;
 int input_report_key (int ,scalar_t__,int) ;
 int input_sync (int ) ;

__attribute__((used)) static int hidpp10_extra_mouse_buttons_raw_event(struct hidpp_device *hidpp,
        u8 *data, int size)
{
 int i;

 if (!hidpp->input)
  return -EINVAL;

 if (size < 7)
  return 0;

 if (data[0] != REPORT_ID_HIDPP_SHORT ||
     data[2] != HIDPP_SUB_ID_MOUSE_EXTRA_BTNS)
  return 0;







 for (i = 0; i < 8; i++)
  input_report_key(hidpp->input, BTN_MOUSE + i,
     (data[3] & (1 << i)));


 for (i = 0; i < 8; i++)
  input_report_key(hidpp->input, BTN_MISC + i,
     (data[4] & (1 << i)));

 input_sync(hidpp->input);
 return 1;
}
