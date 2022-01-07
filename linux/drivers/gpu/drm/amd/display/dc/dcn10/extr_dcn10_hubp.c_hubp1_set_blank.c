
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int mpcc_id; int opp_id; } ;
struct dcn10_hubp {int dummy; } ;


 int DCHUBP_CNTL ;
 int HUBP_BLANK_EN ;
 int HUBP_NO_OUTSTANDING_REQ ;
 int HUBP_TTU_DISABLE ;
 int OPP_ID_INVALID ;
 int REG_READ (int ) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

void hubp1_set_blank(struct hubp *hubp, bool blank)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);
 uint32_t blank_en = blank ? 1 : 0;

 REG_UPDATE_2(DCHUBP_CNTL,
   HUBP_BLANK_EN, blank_en,
   HUBP_TTU_DISABLE, blank_en);

 if (blank) {
  uint32_t reg_val = REG_READ(DCHUBP_CNTL);

  if (reg_val) {






   REG_WAIT(DCHUBP_CNTL,
     HUBP_NO_OUTSTANDING_REQ, 1,
     1, 200);
  }

  hubp->mpcc_id = 0xf;
  hubp->opp_id = OPP_ID_INVALID;
 }
}
