
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_state {int verbose; } ;


 int ETIMEDOUT ;
 int FE_ERROR ;
 int FIFOFULL ;
 int STB0899_DISSTATUS ;
 int STB0899_GETFIELD (int ,int ) ;
 int dprintk (int ,int ,int,char*) ;
 unsigned long jiffies ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int stb0899_wait_diseqc_fifo_empty(struct stb0899_state *state, int timeout)
{
 u8 reg = 0;
 unsigned long start = jiffies;

 while (1) {
  reg = stb0899_read_reg(state, STB0899_DISSTATUS);
  if (!STB0899_GETFIELD(FIFOFULL, reg))
   break;
  if (time_after(jiffies, start + timeout)) {
   dprintk(state->verbose, FE_ERROR, 1, "timed out !!");
   return -ETIMEDOUT;
  }
 }

 return 0;
}
