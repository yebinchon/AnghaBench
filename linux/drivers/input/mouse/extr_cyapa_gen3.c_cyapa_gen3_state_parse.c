
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {scalar_t__ state; scalar_t__ gen; } ;


 int BL_ERROR_BOOTLOADING ;
 int BL_ERROR_NO_ERR_IDLE ;
 int BL_FILE ;
 int BL_STATUS_BUSY ;
 int BL_STATUS_CSUM_VALID ;
 int BL_STATUS_RUNNING ;
 scalar_t__ CYAPA_GEN3 ;
 scalar_t__ CYAPA_STATE_BL_ACTIVE ;
 scalar_t__ CYAPA_STATE_BL_BUSY ;
 scalar_t__ CYAPA_STATE_BL_IDLE ;
 scalar_t__ CYAPA_STATE_NO_DEVICE ;
 scalar_t__ CYAPA_STATE_OP ;
 int EAGAIN ;
 scalar_t__ GEN3_FINGER_NUM (int) ;
 scalar_t__ GEN3_MAX_FINGERS ;
 int OP_DATA_VALID ;
 int OP_STATUS_SRC ;
 size_t REG_BL_ERROR ;
 size_t REG_BL_FILE ;
 size_t REG_BL_STATUS ;
 size_t REG_OP_DATA1 ;
 size_t REG_OP_STATUS ;

__attribute__((used)) static int cyapa_gen3_state_parse(struct cyapa *cyapa, u8 *reg_data, int len)
{
 cyapa->state = CYAPA_STATE_NO_DEVICE;


 if (reg_data[REG_BL_FILE] == BL_FILE &&
  reg_data[REG_BL_ERROR] == BL_ERROR_NO_ERR_IDLE &&
  (reg_data[REG_BL_STATUS] ==
   (BL_STATUS_RUNNING | BL_STATUS_CSUM_VALID) ||
   reg_data[REG_BL_STATUS] == BL_STATUS_RUNNING)) {





  cyapa->gen = CYAPA_GEN3;
  cyapa->state = CYAPA_STATE_BL_IDLE;
 } else if (reg_data[REG_BL_FILE] == BL_FILE &&
  (reg_data[REG_BL_STATUS] & BL_STATUS_RUNNING) ==
   BL_STATUS_RUNNING) {
  cyapa->gen = CYAPA_GEN3;
  if (reg_data[REG_BL_STATUS] & BL_STATUS_BUSY) {
   cyapa->state = CYAPA_STATE_BL_BUSY;
  } else {
   if ((reg_data[REG_BL_ERROR] & BL_ERROR_BOOTLOADING) ==
     BL_ERROR_BOOTLOADING)
    cyapa->state = CYAPA_STATE_BL_ACTIVE;
   else
    cyapa->state = CYAPA_STATE_BL_IDLE;
  }
 } else if ((reg_data[REG_OP_STATUS] & OP_STATUS_SRC) &&
   (reg_data[REG_OP_DATA1] & OP_DATA_VALID)) {





  if (GEN3_FINGER_NUM(reg_data[REG_OP_DATA1]) <=
    GEN3_MAX_FINGERS) {

   cyapa->gen = CYAPA_GEN3;
   cyapa->state = CYAPA_STATE_OP;
  }
 } else if (reg_data[REG_OP_STATUS] == 0x0C &&
   reg_data[REG_OP_DATA1] == 0x08) {

  cyapa->gen = CYAPA_GEN3;
  cyapa->state = CYAPA_STATE_OP;
 } else if (reg_data[REG_BL_STATUS] &
   (BL_STATUS_RUNNING | BL_STATUS_BUSY)) {
  cyapa->gen = CYAPA_GEN3;
  cyapa->state = CYAPA_STATE_BL_BUSY;
 }

 if (cyapa->gen == CYAPA_GEN3 && (cyapa->state == CYAPA_STATE_OP ||
  cyapa->state == CYAPA_STATE_BL_IDLE ||
  cyapa->state == CYAPA_STATE_BL_ACTIVE ||
  cyapa->state == CYAPA_STATE_BL_BUSY))
  return 0;

 return -EAGAIN;
}
