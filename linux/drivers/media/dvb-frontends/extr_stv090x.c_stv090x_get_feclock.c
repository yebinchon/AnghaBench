
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv090x_state {int dummy; } ;
typedef scalar_t__ s32 ;


 int DMDSTATE ;
 int HEADER_MODE_FIELD ;
 int LOCKEDVIT_FIELD ;
 int PDELSTATUS1 ;
 int PKTDELIN_LOCK_FIELD ;
 scalar_t__ STV090x_GETFIELD_Px (int ,int ) ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int VSTATUSVIT ;
 int msleep (int) ;

__attribute__((used)) static int stv090x_get_feclock(struct stv090x_state *state, s32 timeout)
{
 s32 timer = 0, lock = 0, stat;
 u32 reg;

 while ((timer < timeout) && (!lock)) {
  reg = STV090x_READ_DEMOD(state, DMDSTATE);
  stat = STV090x_GETFIELD_Px(reg, HEADER_MODE_FIELD);

  switch (stat) {
  case 0:
  case 1:
  default:
   lock = 0;
   break;

  case 2:
   reg = STV090x_READ_DEMOD(state, PDELSTATUS1);
   lock = STV090x_GETFIELD_Px(reg, PKTDELIN_LOCK_FIELD);
   break;

  case 3:
   reg = STV090x_READ_DEMOD(state, VSTATUSVIT);
   lock = STV090x_GETFIELD_Px(reg, LOCKEDVIT_FIELD);
   break;
  }
  if (!lock) {
   msleep(10);
   timer += 10;
  }
 }
 return lock;
}
