
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;


 int DCHUBP_CNTL ;
 int HUBP_UNDERFLOW_CLEAR ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

void hubp2_clear_underflow(struct hubp *hubp)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);

 REG_UPDATE(DCHUBP_CNTL, HUBP_UNDERFLOW_CLEAR, 1);
}
