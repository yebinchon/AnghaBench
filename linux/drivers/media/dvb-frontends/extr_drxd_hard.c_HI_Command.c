
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct drxd_state {int dummy; } ;


 scalar_t__ DRXD_MAX_RETRIES ;
 int HI_RA_RAM_SRV_CMD__A ;
 int HI_RA_RAM_SRV_RES__A ;
 int Read16 (struct drxd_state*,int ,int *,int ) ;
 int Write16 (struct drxd_state*,int ,int ,int ) ;

__attribute__((used)) static int HI_Command(struct drxd_state *state, u16 cmd, u16 * pResult)
{
 u32 nrRetries = 0;
 int status;

 status = Write16(state, HI_RA_RAM_SRV_CMD__A, cmd, 0);
 if (status < 0)
  return status;

 do {
  nrRetries += 1;
  if (nrRetries > DRXD_MAX_RETRIES) {
   status = -1;
   break;
  }
  status = Read16(state, HI_RA_RAM_SRV_CMD__A, ((void*)0), 0);
 } while (status != 0);

 if (status >= 0)
  status = Read16(state, HI_RA_RAM_SRV_RES__A, pResult, 0);
 return status;
}
