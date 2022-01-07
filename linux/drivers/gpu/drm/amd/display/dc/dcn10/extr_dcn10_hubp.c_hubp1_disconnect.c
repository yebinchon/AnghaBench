
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;


 int CURSOR_CONTROL ;
 int CURSOR_ENABLE ;
 int DCHUBP_CNTL ;
 int HUBP_TTU_DISABLE ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

__attribute__((used)) static void hubp1_disconnect(struct hubp *hubp)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);

 REG_UPDATE(DCHUBP_CNTL,
   HUBP_TTU_DISABLE, 1);

 REG_UPDATE(CURSOR_CONTROL,
   CURSOR_ENABLE, 0);
}
