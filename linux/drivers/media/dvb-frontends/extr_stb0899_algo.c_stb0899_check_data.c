
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_params {int srate; } ;
struct stb0899_internal {int status; } ;
struct stb0899_state {int verbose; struct stb0899_params params; struct stb0899_internal internal; } ;
typedef enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;


 int DATAOK ;
 int FE_DEBUG ;
 int FRESACS ;
 int NODATA ;
 int STB0899_DSTATUS2 ;
 int STB0899_GETFIELD (int ,int) ;
 int STB0899_SETFIELD_VAL (int ,int,int) ;
 int STB0899_TSTRES ;
 int STB0899_VSTATUS ;
 int VSTATUS_END_LOOPVIT ;
 int VSTATUS_LOCKEDVIT ;
 int dprintk (int ,int ,int,char*) ;
 int msleep (int) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;

__attribute__((used)) static enum stb0899_status stb0899_check_data(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 struct stb0899_params *params = &state->params;

 int lock = 0, index = 0, dataTime = 500, loop;
 u8 reg;

 internal->status = NODATA;


 reg = stb0899_read_reg(state, STB0899_TSTRES);
 STB0899_SETFIELD_VAL(FRESACS, reg, 1);
 stb0899_write_reg(state, STB0899_TSTRES, reg);
 msleep(1);
 reg = stb0899_read_reg(state, STB0899_TSTRES);
 STB0899_SETFIELD_VAL(FRESACS, reg, 0);
 stb0899_write_reg(state, STB0899_TSTRES, reg);

 if (params->srate <= 2000000)
  dataTime = 2000;
 else if (params->srate <= 5000000)
  dataTime = 1500;
 else if (params->srate <= 15000000)
  dataTime = 1000;
 else
  dataTime = 500;


 stb0899_read_reg(state, STB0899_VSTATUS);

 stb0899_write_reg(state, STB0899_DSTATUS2, 0x00);
 while (1) {

  reg = stb0899_read_reg(state, STB0899_VSTATUS);
  lock = STB0899_GETFIELD(VSTATUS_LOCKEDVIT, reg);
  loop = STB0899_GETFIELD(VSTATUS_END_LOOPVIT, reg);

  if (lock || loop || (index > dataTime))
   break;
  index++;
 }

 if (lock) {
  internal->status = DATAOK;
  dprintk(state->verbose, FE_DEBUG, 1, "-----------------> DATA OK !");
 }

 return internal->status;
}
