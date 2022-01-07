
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;


 int DCHUBP_CNTL ;
 int HUBP_VTG_SEL ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

void hubp1_vtg_sel(struct hubp *hubp, uint32_t otg_inst)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);

 REG_UPDATE(DCHUBP_CNTL, HUBP_VTG_SEL, otg_inst);
}
