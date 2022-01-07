
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxd_state {scalar_t__ type_A; } ;


 int DRX_I2C_BROADCAST ;
 int EC_OC_REG_OC_MON_SIO__A ;
 int HI_COMM_MB__A ;
 int Write16 (struct drxd_state*,int ,int,int) ;

__attribute__((used)) static int EnableAndResetMB(struct drxd_state *state)
{
 if (state->type_A) {

  Write16(state, EC_OC_REG_OC_MON_SIO__A, 0x0000, 0x0000);
 }


 Write16(state, HI_COMM_MB__A, 0x0000, DRX_I2C_BROADCAST);
 Write16(state, HI_COMM_MB__A, 0x0000, 0x0000);
 return 0;
}
