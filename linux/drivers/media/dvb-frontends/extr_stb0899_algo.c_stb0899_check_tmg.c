
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct stb0899_internal {int status; int t_derot; } ;
struct stb0899_state {int verbose; struct stb0899_internal internal; } ;
typedef void* s8 ;
typedef enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;


 int ANALOGCARRIER ;
 int FE_DEBUG ;
 int NOTIMING ;
 int STB0899_GETFIELD (int ,void*) ;
 int STB0899_RTF ;
 int STB0899_TLIR ;
 int TIMINGOK ;
 int TLIR_TMG_LOCK_IND ;
 int abs (void*) ;
 int dprintk (int ,int ,int,char*) ;
 int msleep (int ) ;
 void* stb0899_read_reg (struct stb0899_state*,int ) ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;

__attribute__((used)) static enum stb0899_status stb0899_check_tmg(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 int lock;
 u8 reg;
 s8 timing;

 msleep(internal->t_derot);

 stb0899_write_reg(state, STB0899_RTF, 0xf2);
 reg = stb0899_read_reg(state, STB0899_TLIR);
 lock = STB0899_GETFIELD(TLIR_TMG_LOCK_IND, reg);
 timing = stb0899_read_reg(state, STB0899_RTF);

 if (lock >= 42) {
  if ((lock > 48) && (abs(timing) >= 110)) {
   internal->status = ANALOGCARRIER;
   dprintk(state->verbose, FE_DEBUG, 1, "-->ANALOG Carrier !");
  } else {
   internal->status = TIMINGOK;
   dprintk(state->verbose, FE_DEBUG, 1, "------->TIMING OK !");
  }
 } else {
  internal->status = NOTIMING;
  dprintk(state->verbose, FE_DEBUG, 1, "-->NO TIMING !");
 }
 return internal->status;
}
