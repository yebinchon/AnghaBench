
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;


 int DCHUBP_CNTL ;
 int HUBP_UNDERFLOW_STATUS ;
 int REG_GET (int ,int ,unsigned int*) ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

__attribute__((used)) static unsigned int hubp1_get_underflow_status(struct hubp *hubp)
{
 uint32_t hubp_underflow = 0;
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);

 REG_GET(DCHUBP_CNTL,
  HUBP_UNDERFLOW_STATUS,
  &hubp_underflow);

 return hubp_underflow;
}
