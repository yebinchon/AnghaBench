
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int mutex; } ;


 int HI_Command (struct drxd_state*,int ,int *) ;
 int HI_RA_RAM_SRV_CMD_RESET ;
 int HI_RA_RAM_SRV_RST_KEY_ACT ;
 int HI_RA_RAM_SRV_RST_KEY__A ;
 int Write16 (struct drxd_state*,int ,int ,int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int HI_ResetCommand(struct drxd_state *state)
{
 int status;

 mutex_lock(&state->mutex);
 status = Write16(state, HI_RA_RAM_SRV_RST_KEY__A,
    HI_RA_RAM_SRV_RST_KEY_ACT, 0);
 if (status == 0)
  status = HI_Command(state, HI_RA_RAM_SRV_CMD_RESET, ((void*)0));
 mutex_unlock(&state->mutex);
 msleep(1);
 return status;
}
