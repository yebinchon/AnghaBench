
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drxd_state {scalar_t__ drxd_state; scalar_t__ cscd_state; scalar_t__ type_A; } ;


 int B_CE_COMM_EXEC__A ;
 int B_CP_COMM_EXEC__A ;
 int B_EQ_COMM_EXEC__A ;
 int B_FT_COMM_EXEC__A ;
 int B_LC_COMM_EXEC__A ;
 int B_SC_COMM_EXEC__A ;
 scalar_t__ CSCD_SAVED ;
 int ConfigureMPEGOutput (struct drxd_state*,int ) ;
 scalar_t__ DRXD_STARTED ;
 scalar_t__ DRXD_STOPPED ;
 int DRX_GetLockStatus (struct drxd_state*,int *) ;
 int EC_OD_REG_COMM_EXEC__A ;
 int LC_COMM_EXEC__A ;
 int SC_COMM_EXEC_CTL_STOP ;
 int SC_COMM_EXEC__A ;
 int StopOC (struct drxd_state*) ;
 int Write16 (struct drxd_state*,int ,int,int) ;

__attribute__((used)) static int DRX_Stop(struct drxd_state *state)
{
 int status;

 if (state->drxd_state != DRXD_STARTED)
  return 0;

 do {
  if (state->cscd_state != CSCD_SAVED) {
   u32 lock;
   status = DRX_GetLockStatus(state, &lock);
   if (status < 0)
    break;
  }

  status = StopOC(state);
  if (status < 0)
   break;

  state->drxd_state = DRXD_STOPPED;

  status = ConfigureMPEGOutput(state, 0);
  if (status < 0)
   break;

  if (state->type_A) {

   status = Write16(state, EC_OD_REG_COMM_EXEC__A, 0x0000, 0x0000);
   if (status < 0)
    break;

   status = Write16(state, SC_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
   if (status < 0)
    break;
   status = Write16(state, LC_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
   if (status < 0)
    break;
  } else {

   status = Write16(state, B_SC_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
   if (status < 0)
    break;
   status = Write16(state, B_LC_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
   if (status < 0)
    break;
   status = Write16(state, B_FT_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
   if (status < 0)
    break;
   status = Write16(state, B_CP_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
   if (status < 0)
    break;
   status = Write16(state, B_CE_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
   if (status < 0)
    break;
   status = Write16(state, B_EQ_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
   if (status < 0)
    break;
   status = Write16(state, EC_OD_REG_COMM_EXEC__A, 0x0000, 0);
   if (status < 0)
    break;
  }

 } while (0);
 return status;
}
