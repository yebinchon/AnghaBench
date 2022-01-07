
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int state; int gen; } ;


 int CYAPA_GEN5 ;
 int CYAPA_STATE_GEN5_APP ;
 int EINVAL ;

 int PIP_BTN_REPORT_HEAD_SIZE ;

 int PIP_BTN_REPORT_MAX_SIZE ;

 size_t PIP_RESP_LENGTH_OFFSET ;
 size_t PIP_RESP_REPORT_ID_OFFSET ;
 int PIP_TOUCH_REPORT_HEAD_SIZE ;

 int PIP_TOUCH_REPORT_MAX_SIZE ;

 int PIP_WAKEUP_EVENT_SIZE ;
 int get_unaligned_le16 (int*) ;

__attribute__((used)) static int gen5_report_data_header_parse(struct cyapa *cyapa, u8 *reg_data)
{
 int length;

 length = get_unaligned_le16(&reg_data[PIP_RESP_LENGTH_OFFSET]);
 switch (reg_data[PIP_RESP_REPORT_ID_OFFSET]) {
 case 129:
  if (length < PIP_TOUCH_REPORT_HEAD_SIZE ||
   length > PIP_TOUCH_REPORT_MAX_SIZE)
   return -EINVAL;
  break;
 case 131:
 case 132:
 case 130:
  if (length < PIP_BTN_REPORT_HEAD_SIZE ||
   length > PIP_BTN_REPORT_MAX_SIZE)
   return -EINVAL;
  break;
 case 128:
  if (length != PIP_WAKEUP_EVENT_SIZE)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 cyapa->gen = CYAPA_GEN5;
 cyapa->state = CYAPA_STATE_GEN5_APP;
 return 0;
}
