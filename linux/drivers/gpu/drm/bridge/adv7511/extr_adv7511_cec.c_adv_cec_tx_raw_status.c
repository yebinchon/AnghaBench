
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adv7511 {scalar_t__ type; int cec_adap; int regmap_cec; } ;


 int ADV7511_INT1_CEC_TX_ARBIT_LOST ;
 int ADV7511_INT1_CEC_TX_READY ;
 int ADV7511_INT1_CEC_TX_RETRY_TIMEOUT ;
 scalar_t__ ADV7511_REG_CEC_TX_ENABLE ;
 scalar_t__ ADV7511_REG_CEC_TX_LOW_DRV_CNT ;
 scalar_t__ ADV7533 ;
 unsigned int ADV7533_REG_CEC_OFFSET ;
 int CEC_TX_STATUS_ARB_LOST ;
 int CEC_TX_STATUS_ERROR ;
 int CEC_TX_STATUS_LOW_DRIVE ;
 int CEC_TX_STATUS_MAX_RETRIES ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int cec_transmit_attempt_done (int ,int ) ;
 int cec_transmit_done (int ,int,int ,int,int,int) ;
 scalar_t__ regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static void adv_cec_tx_raw_status(struct adv7511 *adv7511, u8 tx_raw_status)
{
 unsigned int offset = adv7511->type == ADV7533 ?
     ADV7533_REG_CEC_OFFSET : 0;
 unsigned int val;

 if (regmap_read(adv7511->regmap_cec,
   ADV7511_REG_CEC_TX_ENABLE + offset, &val))
  return;

 if ((val & 0x01) == 0)
  return;

 if (tx_raw_status & ADV7511_INT1_CEC_TX_ARBIT_LOST) {
  cec_transmit_attempt_done(adv7511->cec_adap,
       CEC_TX_STATUS_ARB_LOST);
  return;
 }
 if (tx_raw_status & ADV7511_INT1_CEC_TX_RETRY_TIMEOUT) {
  u8 status;
  u8 err_cnt = 0;
  u8 nack_cnt = 0;
  u8 low_drive_cnt = 0;
  unsigned int cnt;





  status = CEC_TX_STATUS_MAX_RETRIES;
  if (regmap_read(adv7511->regmap_cec,
       ADV7511_REG_CEC_TX_LOW_DRV_CNT + offset, &cnt)) {
   err_cnt = 1;
   status |= CEC_TX_STATUS_ERROR;
  } else {
   nack_cnt = cnt & 0xf;
   if (nack_cnt)
    status |= CEC_TX_STATUS_NACK;
   low_drive_cnt = cnt >> 4;
   if (low_drive_cnt)
    status |= CEC_TX_STATUS_LOW_DRIVE;
  }
  cec_transmit_done(adv7511->cec_adap, status,
      0, nack_cnt, low_drive_cnt, err_cnt);
  return;
 }
 if (tx_raw_status & ADV7511_INT1_CEC_TX_READY) {
  cec_transmit_attempt_done(adv7511->cec_adap, CEC_TX_STATUS_OK);
  return;
 }
}
