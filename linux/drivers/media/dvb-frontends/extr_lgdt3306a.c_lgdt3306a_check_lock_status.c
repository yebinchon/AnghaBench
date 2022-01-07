
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3306a_state {int dummy; } ;
typedef enum lgdt3306a_modulation { ____Placeholder_lgdt3306a_modulation } lgdt3306a_modulation ;
typedef enum lgdt3306a_lock_status { ____Placeholder_lgdt3306a_lock_status } lgdt3306a_lock_status ;
typedef enum lgdt3306a_lock_check { ____Placeholder_lgdt3306a_lock_check } lgdt3306a_lock_check ;




 int LG3306_LOCK ;
 int LG3306_QAM256 ;
 int LG3306_QAM64 ;


 int LG3306_UNKNOWN_LOCK ;
 int LG3306_UNKNOWN_MODE ;
 int LG3306_UNLOCK ;
 int dbg_info (char*,int) ;
 int lgdt3306a_check_oper_mode (struct lgdt3306a_state*) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static enum lgdt3306a_lock_status
lgdt3306a_check_lock_status(struct lgdt3306a_state *state,
       enum lgdt3306a_lock_check whatLock)
{
 u8 val = 0;
 int ret;
 enum lgdt3306a_modulation modeOper;
 enum lgdt3306a_lock_status lockStatus;

 modeOper = LG3306_UNKNOWN_MODE;

 switch (whatLock) {
 case 129:
 {
  ret = lgdt3306a_read_reg(state, 0x00a6, &val);
  if (ret)
   return ret;

  if ((val & 0x80) == 0x80)
   lockStatus = LG3306_LOCK;
  else
   lockStatus = LG3306_UNLOCK;

  dbg_info("SYNC_LOCK=%x\n", lockStatus);
  break;
 }
 case 131:
 {
  ret = lgdt3306a_read_reg(state, 0x0080, &val);
  if (ret)
   return ret;

  if ((val & 0x40) == 0x40)
   lockStatus = LG3306_LOCK;
  else
   lockStatus = LG3306_UNLOCK;

  dbg_info("AGC_LOCK=%x\n", lockStatus);
  break;
 }
 case 128:
 {
  modeOper = lgdt3306a_check_oper_mode(state);
  if ((modeOper == LG3306_QAM64) || (modeOper == LG3306_QAM256)) {
   ret = lgdt3306a_read_reg(state, 0x1094, &val);
   if (ret)
    return ret;

   if ((val & 0x80) == 0x80)
    lockStatus = LG3306_LOCK;
   else
    lockStatus = LG3306_UNLOCK;
  } else
   lockStatus = LG3306_UNKNOWN_LOCK;

  dbg_info("TR_LOCK=%x\n", lockStatus);
  break;
 }
 case 130:
 {
  modeOper = lgdt3306a_check_oper_mode(state);
  if ((modeOper == LG3306_QAM64) || (modeOper == LG3306_QAM256)) {
   ret = lgdt3306a_read_reg(state, 0x0080, &val);
   if (ret)
    return ret;

   if ((val & 0x10) == 0x10)
    lockStatus = LG3306_LOCK;
   else
    lockStatus = LG3306_UNLOCK;
  } else
   lockStatus = LG3306_UNKNOWN_LOCK;

  dbg_info("FEC_LOCK=%x\n", lockStatus);
  break;
 }

 default:
  lockStatus = LG3306_UNKNOWN_LOCK;
  pr_warn("UNKNOWN whatLock=%d\n", whatLock);
  break;
 }

 return lockStatus;
}
