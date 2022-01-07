
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv090x_state {int dummy; } ;
typedef scalar_t__ s32 ;


 int DMDSTATE ;
 int DSTATUS ;
 int FE_DEBUG ;
 int HEADER_MODE_FIELD ;
 int LOCK_DEFINITIF_FIELD ;
 void* STV090x_GETFIELD_Px (int ,int ) ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int dprintk (int ,int,char*) ;
 int msleep (int) ;

__attribute__((used)) static int stv090x_get_dmdlock(struct stv090x_state *state, s32 timeout)
{
 s32 timer = 0, lock = 0;
 u32 reg;
 u8 stat;

 while ((timer < timeout) && (!lock)) {
  reg = STV090x_READ_DEMOD(state, DMDSTATE);
  stat = STV090x_GETFIELD_Px(reg, HEADER_MODE_FIELD);

  switch (stat) {
  case 0:
  case 1:
  default:
   dprintk(FE_DEBUG, 1, "Demodulator searching ..");
   lock = 0;
   break;
  case 2:
  case 3:
   reg = STV090x_READ_DEMOD(state, DSTATUS);
   lock = STV090x_GETFIELD_Px(reg, LOCK_DEFINITIF_FIELD);
   break;
  }

  if (!lock)
   msleep(10);
  else
   dprintk(FE_DEBUG, 1, "Demodulator acquired LOCK");

  timer += 10;
 }
 return lock;
}
