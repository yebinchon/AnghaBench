
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cryp {int dummy; } ;


 int CRYP_IMSCR ;
 int IMSCR_IN ;
 int IMSCR_OUT ;
 int stm32_cryp_write (struct stm32_cryp*,int ,int) ;

__attribute__((used)) static int stm32_cryp_cpu_start(struct stm32_cryp *cryp)
{

 stm32_cryp_write(cryp, CRYP_IMSCR, IMSCR_IN | IMSCR_OUT);

 return 0;
}
