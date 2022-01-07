
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubp {int dummy; } ;
struct dcn21_hubp {int dummy; } ;


 int HUBPREQ_DEBUG ;
 int REG_WRITE (int ,int) ;
 struct dcn21_hubp* TO_DCN21_HUBP (struct hubp*) ;

void hubp21_init(struct hubp *hubp)
{



 struct dcn21_hubp *hubp21 = TO_DCN21_HUBP(hubp);

 REG_WRITE(HUBPREQ_DEBUG, 1 << 26);
}
