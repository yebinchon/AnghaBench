
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct cyapa_pip_cmd_states {scalar_t__* empty_buf; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {void* state; void* gen; TYPE_1__ cmd_states; } ;


 void* CYAPA_GEN5 ;
 void* CYAPA_STATE_GEN5_APP ;
 void* CYAPA_STATE_GEN5_BL ;
 void* CYAPA_STATE_NO_DEVICE ;
 int EIO ;
 scalar_t__ PIP_APP_RESP_REPORT_ID ;
 scalar_t__ PIP_BL_RESP_REPORT_ID ;
 scalar_t__ PIP_EOP_KEY ;
 size_t PIP_RESP_BL_SOP_OFFSET ;
 size_t PIP_RESP_LENGTH_OFFSET ;
 int PIP_RESP_LENGTH_SIZE ;
 size_t PIP_RESP_REPORT_ID_OFFSET ;
 scalar_t__ PIP_RESP_RSVD_KEY ;
 size_t PIP_RESP_RSVD_OFFSET ;
 scalar_t__ PIP_SOP_KEY ;
 int cyapa_i2c_pip_read (struct cyapa*,scalar_t__*,int) ;
 int get_unaligned_le16 (scalar_t__*) ;

__attribute__((used)) static int gen5_cmd_resp_header_parse(struct cyapa *cyapa, u8 *reg_data)
{
 struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;
 int length;
 int ret;






 length = get_unaligned_le16(&reg_data[PIP_RESP_LENGTH_OFFSET]);
 ret = cyapa_i2c_pip_read(cyapa, pip->empty_buf, length);
 if (ret != length)
  return ret < 0 ? ret : -EIO;

 if (length == PIP_RESP_LENGTH_SIZE) {

  if (reg_data[PIP_RESP_REPORT_ID_OFFSET] ==
    PIP_BL_RESP_REPORT_ID) {

   cyapa->gen = CYAPA_GEN5;
   cyapa->state = CYAPA_STATE_GEN5_BL;
  } else {

   cyapa->gen = CYAPA_GEN5;
   cyapa->state = CYAPA_STATE_GEN5_APP;
  }
 } else if ((pip->empty_buf[PIP_RESP_REPORT_ID_OFFSET] ==
    PIP_BL_RESP_REPORT_ID) &&
   (pip->empty_buf[PIP_RESP_RSVD_OFFSET] ==
    PIP_RESP_RSVD_KEY) &&
   (pip->empty_buf[PIP_RESP_BL_SOP_OFFSET] ==
    PIP_SOP_KEY) &&
   (pip->empty_buf[length - 1] ==
    PIP_EOP_KEY)) {

  cyapa->gen = CYAPA_GEN5;
  cyapa->state = CYAPA_STATE_GEN5_BL;
 } else if (pip->empty_buf[PIP_RESP_REPORT_ID_OFFSET] ==
    PIP_APP_RESP_REPORT_ID &&
   pip->empty_buf[PIP_RESP_RSVD_OFFSET] ==
    PIP_RESP_RSVD_KEY) {

  cyapa->gen = CYAPA_GEN5;
  cyapa->state = CYAPA_STATE_GEN5_APP;
 } else {

  cyapa->state = CYAPA_STATE_NO_DEVICE;
 }

 return 0;
}
