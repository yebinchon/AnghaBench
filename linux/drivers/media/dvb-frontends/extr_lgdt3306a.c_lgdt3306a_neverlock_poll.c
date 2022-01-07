
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int dummy; } ;
typedef enum lgdt3306a_neverlock_status { ____Placeholder_lgdt3306a_neverlock_status } lgdt3306a_neverlock_status ;


 int LG3306_NL_FAIL ;
 int LG3306_NL_LOCK ;
 int dbg_info (char*,int) ;
 int lgdt3306a_check_neverlock_status (struct lgdt3306a_state*) ;
 int msleep (int) ;

__attribute__((used)) static enum lgdt3306a_neverlock_status
lgdt3306a_neverlock_poll(struct lgdt3306a_state *state)
{
 enum lgdt3306a_neverlock_status NLLockStatus = LG3306_NL_FAIL;
 int i;

 for (i = 0; i < 5; i++) {
  msleep(30);

  NLLockStatus = lgdt3306a_check_neverlock_status(state);

  if (NLLockStatus == LG3306_NL_LOCK) {
   dbg_info("NL_LOCK(%d)\n", i);
   return NLLockStatus;
  }
 }
 dbg_info("NLLockStatus=%d\n", NLLockStatus);
 return NLLockStatus;
}
