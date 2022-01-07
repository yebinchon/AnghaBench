
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxd_state {int mutex; } ;


 int SC_RA_RAM_CMD_ADDR__A ;
 int SC_RA_RAM_CMD_SET_PREF_PARAM ;
 int SC_RA_RAM_PARAM0__A ;
 int SC_RA_RAM_PARAM1__A ;
 int SC_SendCommand (struct drxd_state*,int ) ;
 int SC_WaitForReady (struct drxd_state*) ;
 int Write16 (struct drxd_state*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int SC_SetPrefParamCommand(struct drxd_state *state,
      u16 subCmd, u16 param0, u16 param1)
{
 int status;

 mutex_lock(&state->mutex);
 do {
  status = SC_WaitForReady(state);
  if (status < 0)
   break;
  status = Write16(state, SC_RA_RAM_CMD_ADDR__A, subCmd, 0);
  if (status < 0)
   break;
  status = Write16(state, SC_RA_RAM_PARAM1__A, param1, 0);
  if (status < 0)
   break;
  status = Write16(state, SC_RA_RAM_PARAM0__A, param0, 0);
  if (status < 0)
   break;

  status = SC_SendCommand(state, SC_RA_RAM_CMD_SET_PREF_PARAM);
  if (status < 0)
   break;
 } while (0);
 mutex_unlock(&state->mutex);
 return status;
}
