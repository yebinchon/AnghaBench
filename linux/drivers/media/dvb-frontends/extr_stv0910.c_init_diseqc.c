
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct stv {TYPE_1__* base; scalar_t__ nr; } ;
struct TYPE_2__ {int mclk; } ;


 int RSTV0910_P1_DISRXCFG ;
 int RSTV0910_P1_DISTXCFG ;
 int RSTV0910_P1_DISTXF22 ;
 int write_reg (struct stv*,int,int) ;

__attribute__((used)) static int init_diseqc(struct stv *state)
{
 u16 offs = state->nr ? 0x40 : 0;
 u8 freq = ((state->base->mclk + 11000 * 32) / (22000 * 32));


 write_reg(state, RSTV0910_P1_DISRXCFG + offs, 0x00);
 write_reg(state, RSTV0910_P1_DISTXCFG + offs, 0xBA);
 write_reg(state, RSTV0910_P1_DISTXCFG + offs, 0x3A);
 write_reg(state, RSTV0910_P1_DISTXF22 + offs, freq);
 return 0;
}
