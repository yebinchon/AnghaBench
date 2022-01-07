
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv090x_state {int dummy; } ;
typedef enum stv090x_delsys { ____Placeholder_stv090x_delsys } stv090x_delsys ;


 int DMDSTATE ;
 int DSS_DVB_FIELD ;
 int FECM ;
 int HEADER_MODE_FIELD ;
 int STV090x_DSS ;
 int STV090x_DVBS1 ;
 int STV090x_DVBS2 ;
 int STV090x_ERROR ;
 int STV090x_GETFIELD_Px (int ,int ) ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;

__attribute__((used)) static enum stv090x_delsys stv090x_get_std(struct stv090x_state *state)
{
 u32 reg;
 enum stv090x_delsys delsys;

 reg = STV090x_READ_DEMOD(state, DMDSTATE);
 if (STV090x_GETFIELD_Px(reg, HEADER_MODE_FIELD) == 2)
  delsys = STV090x_DVBS2;
 else if (STV090x_GETFIELD_Px(reg, HEADER_MODE_FIELD) == 3) {
  reg = STV090x_READ_DEMOD(state, FECM);
  if (STV090x_GETFIELD_Px(reg, DSS_DVB_FIELD) == 1)
   delsys = STV090x_DSS;
  else
   delsys = STV090x_DVBS1;
 } else {
  delsys = STV090x_ERROR;
 }

 return delsys;
}
