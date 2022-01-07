
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {int dummy; } ;


 int DRX_I2C_BROADCAST ;
 int HI_COMM_EXEC__A ;
 int SC_COMM_EXEC_CTL_STOP ;
 int Write16 (struct drxd_state*,int ,int ,int ) ;

__attribute__((used)) static int StopAllProcessors(struct drxd_state *state)
{
 return Write16(state, HI_COMM_EXEC__A,
         SC_COMM_EXEC_CTL_STOP, DRX_I2C_BROADCAST);
}
