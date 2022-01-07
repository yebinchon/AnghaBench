
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3306a_state {int dummy; } ;
typedef enum lgdt3306a_neverlock_status { ____Placeholder_lgdt3306a_neverlock_status } lgdt3306a_neverlock_status ;


 int dbg_info (char*,int) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;

__attribute__((used)) static enum lgdt3306a_neverlock_status
lgdt3306a_check_neverlock_status(struct lgdt3306a_state *state)
{
 u8 val = 0;
 int ret;
 enum lgdt3306a_neverlock_status lockStatus;

 ret = lgdt3306a_read_reg(state, 0x0080, &val);
 if (ret)
  return ret;
 lockStatus = (enum lgdt3306a_neverlock_status)(val & 0x03);

 dbg_info("NeverLock=%d", lockStatus);

 return lockStatus;
}
