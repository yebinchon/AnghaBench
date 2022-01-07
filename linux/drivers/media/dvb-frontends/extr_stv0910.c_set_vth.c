
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct stv {scalar_t__* vth; scalar_t__ regoff; } ;
struct slookup {int member_0; int member_1; } ;
typedef scalar_t__ s32 ;


 int ARRAY_SIZE (struct slookup const*) ;
 scalar_t__ RSTV0910_P2_NNOSDATAT1 ;
 scalar_t__ RSTV0910_P2_VTH12 ;
 int read_regs (struct stv*,scalar_t__,int*,int) ;
 scalar_t__ table_lookup (struct slookup const*,int ,int) ;
 int write_reg (struct stv*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int set_vth(struct stv *state)
{
 static const struct slookup vthlookup_table[] = {
  {250, 8780},
  {100, 7405},
  {40, 6330},
  {12, 5224},
  {5, 4236}
 };

 int i;
 u8 tmp[2];
 int status = read_regs(state,
          RSTV0910_P2_NNOSDATAT1 + state->regoff,
          tmp, 2);
 u16 reg_value = (tmp[0] << 8) | tmp[1];
 s32 vth = table_lookup(vthlookup_table, ARRAY_SIZE(vthlookup_table),
         reg_value);

 for (i = 0; i < 6; i += 1)
  if (state->vth[i] > vth)
   state->vth[i] = vth;

 write_reg(state, RSTV0910_P2_VTH12 + state->regoff + 0, state->vth[0]);
 write_reg(state, RSTV0910_P2_VTH12 + state->regoff + 1, state->vth[1]);
 write_reg(state, RSTV0910_P2_VTH12 + state->regoff + 2, state->vth[2]);
 write_reg(state, RSTV0910_P2_VTH12 + state->regoff + 3, state->vth[3]);
 write_reg(state, RSTV0910_P2_VTH12 + state->regoff + 4, state->vth[4]);
 write_reg(state, RSTV0910_P2_VTH12 + state->regoff + 5, state->vth[5]);
 return status;
}
