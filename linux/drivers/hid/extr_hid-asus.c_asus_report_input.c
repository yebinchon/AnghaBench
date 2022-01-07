
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct asus_drvdata {int input; TYPE_1__* tp; } ;
struct TYPE_2__ {int contact_size; int max_contacts; } ;


 int BIT (int) ;
 int BTN_LEFT ;
 int BTN_LEFT_MASK ;
 int CONTACT_TOOL_TYPE_MASK ;
 int MT_TOOL_FINGER ;
 int MT_TOOL_PALM ;
 int asus_report_contact_down (struct asus_drvdata*,int,int*) ;
 int asus_report_tool_width (struct asus_drvdata*) ;
 int input_mt_report_slot_state (int ,int,int) ;
 int input_mt_slot (int ,int) ;
 int input_mt_sync_frame (int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static int asus_report_input(struct asus_drvdata *drvdat, u8 *data, int size)
{
 int i, toolType = MT_TOOL_FINGER;
 u8 *contactData = data + 2;

 if (size != 3 + drvdat->tp->contact_size * drvdat->tp->max_contacts)
  return 0;

 for (i = 0; i < drvdat->tp->max_contacts; i++) {
  bool down = !!(data[1] & BIT(i+3));

  if (drvdat->tp->contact_size >= 5)
   toolType = contactData[3] & CONTACT_TOOL_TYPE_MASK ?
      MT_TOOL_PALM : MT_TOOL_FINGER;

  input_mt_slot(drvdat->input, i);
  input_mt_report_slot_state(drvdat->input, toolType, down);

  if (down) {
   asus_report_contact_down(drvdat, toolType, contactData);
   contactData += drvdat->tp->contact_size;
  }
 }

 input_report_key(drvdat->input, BTN_LEFT, data[1] & BTN_LEFT_MASK);
 asus_report_tool_width(drvdat);

 input_mt_sync_frame(drvdat->input);
 input_sync(drvdat->input);

 return 1;
}
