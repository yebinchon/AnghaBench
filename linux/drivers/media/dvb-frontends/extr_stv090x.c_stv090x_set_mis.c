
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv090x_state {int dummy; } ;


 int FE_DEBUG ;
 int FE_ERROR ;
 int FILTER_EN_FIELD ;
 int ISIBITENA ;
 int ISIENTRY ;
 int PDELCTRL1 ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int,int ,int) ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int dprintk (int ,int,char*,...) ;

__attribute__((used)) static int stv090x_set_mis(struct stv090x_state *state, int mis)
{
 u32 reg;

 if (mis < 0 || mis > 255) {
  dprintk(FE_DEBUG, 1, "Disable MIS filtering");
  reg = STV090x_READ_DEMOD(state, PDELCTRL1);
  STV090x_SETFIELD_Px(reg, FILTER_EN_FIELD, 0x00);
  if (STV090x_WRITE_DEMOD(state, PDELCTRL1, reg) < 0)
   goto err;
 } else {
  dprintk(FE_DEBUG, 1, "Enable MIS filtering - %d", mis);
  reg = STV090x_READ_DEMOD(state, PDELCTRL1);
  STV090x_SETFIELD_Px(reg, FILTER_EN_FIELD, 0x01);
  if (STV090x_WRITE_DEMOD(state, PDELCTRL1, reg) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, ISIENTRY, mis) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, ISIBITENA, 0xff) < 0)
   goto err;
 }
 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
