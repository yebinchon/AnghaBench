
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;


 int DCSURF_FLIP_CONTROL2 ;
 int REG_UPDATE (int ,int ,int) ;
 int SURFACE_GSL_ENABLE ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

void hubp2_set_flip_control_surface_gsl(struct hubp *hubp, bool enable)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);

 REG_UPDATE(DCSURF_FLIP_CONTROL2, SURFACE_GSL_ENABLE, enable ? 1 : 0);
}
