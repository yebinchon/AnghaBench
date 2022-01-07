
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int dummy; } ;


 int DRXD_MAX_RETRIES ;
 int Read16 (struct drxd_state*,int ,int *,int ) ;
 int SC_RA_RAM_CMD__A ;

__attribute__((used)) static int SC_WaitForReady(struct drxd_state *state)
{
 int i;

 for (i = 0; i < DRXD_MAX_RETRIES; i += 1) {
  int status = Read16(state, SC_RA_RAM_CMD__A, ((void*)0), 0);
  if (status == 0)
   return status;
 }
 return -1;
}
