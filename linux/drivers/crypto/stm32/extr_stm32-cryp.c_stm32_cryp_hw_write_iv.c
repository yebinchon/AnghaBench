
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_cryp {int dummy; } ;


 int CRYP_IV0LR ;
 int CRYP_IV0RR ;
 int CRYP_IV1LR ;
 int CRYP_IV1RR ;
 int cpu_to_be32 (int ) ;
 scalar_t__ is_aes (struct stm32_cryp*) ;
 int stm32_cryp_write (struct stm32_cryp*,int ,int ) ;

__attribute__((used)) static void stm32_cryp_hw_write_iv(struct stm32_cryp *cryp, u32 *iv)
{
 if (!iv)
  return;

 stm32_cryp_write(cryp, CRYP_IV0LR, cpu_to_be32(*iv++));
 stm32_cryp_write(cryp, CRYP_IV0RR, cpu_to_be32(*iv++));

 if (is_aes(cryp)) {
  stm32_cryp_write(cryp, CRYP_IV1LR, cpu_to_be32(*iv++));
  stm32_cryp_write(cryp, CRYP_IV1RR, cpu_to_be32(*iv++));
 }
}
