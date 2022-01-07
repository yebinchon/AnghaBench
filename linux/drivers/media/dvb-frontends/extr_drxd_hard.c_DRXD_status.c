
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drxd_state {int dummy; } ;


 int ConfigureMPEGOutput (struct drxd_state*,int) ;
 int DRX_GetLockStatus (struct drxd_state*,int*) ;
 int DRX_LOCK_FEC ;

__attribute__((used)) static int DRXD_status(struct drxd_state *state, u32 *pLockStatus)
{
 DRX_GetLockStatus(state, pLockStatus);


 if (*pLockStatus & DRX_LOCK_FEC) {
  ConfigureMPEGOutput(state, 1);


 }

 return 0;
}
