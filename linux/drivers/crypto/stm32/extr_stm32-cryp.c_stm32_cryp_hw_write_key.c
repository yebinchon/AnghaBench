
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_cryp {TYPE_1__* ctx; } ;
struct TYPE_2__ {int keylen; int * key; } ;


 int CRYP_K1LR ;
 int CRYP_K1RR ;
 int CRYP_K3RR ;
 int cpu_to_be32 (int ) ;
 scalar_t__ is_des (struct stm32_cryp*) ;
 int stm32_cryp_write (struct stm32_cryp*,int,int ) ;

__attribute__((used)) static void stm32_cryp_hw_write_key(struct stm32_cryp *c)
{
 unsigned int i;
 int r_id;

 if (is_des(c)) {
  stm32_cryp_write(c, CRYP_K1LR, cpu_to_be32(c->ctx->key[0]));
  stm32_cryp_write(c, CRYP_K1RR, cpu_to_be32(c->ctx->key[1]));
 } else {
  r_id = CRYP_K3RR;
  for (i = c->ctx->keylen / sizeof(u32); i > 0; i--, r_id -= 4)
   stm32_cryp_write(c, r_id,
      cpu_to_be32(c->ctx->key[i - 1]));
 }
}
