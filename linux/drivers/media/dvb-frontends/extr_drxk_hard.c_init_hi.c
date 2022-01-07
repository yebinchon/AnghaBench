
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxk_state {int m_hi_cfg_wake_up_key; int demod_address; int m_hi_cfg_timeout; int m_hi_cfg_ctrl; } ;


 int SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE ;
 int dprintk (int,char*) ;
 int hi_cfg_command (struct drxk_state*) ;

__attribute__((used)) static int init_hi(struct drxk_state *state)
{
 dprintk(1, "\n");

 state->m_hi_cfg_wake_up_key = (state->demod_address << 1);
 state->m_hi_cfg_timeout = 0x96FF;

 state->m_hi_cfg_ctrl = SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE;

 return hi_cfg_command(state);
}
