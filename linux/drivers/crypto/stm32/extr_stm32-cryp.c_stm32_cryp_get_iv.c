
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_cryp {struct ablkcipher_request* req; } ;
struct ablkcipher_request {int * info; } ;


 int CRYP_IV0LR ;
 int CRYP_IV0RR ;
 int CRYP_IV1LR ;
 int CRYP_IV1RR ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ is_aes (struct stm32_cryp*) ;
 int stm32_cryp_read (struct stm32_cryp*,int ) ;

__attribute__((used)) static void stm32_cryp_get_iv(struct stm32_cryp *cryp)
{
 struct ablkcipher_request *req = cryp->req;
 u32 *tmp = req->info;

 if (!tmp)
  return;

 *tmp++ = cpu_to_be32(stm32_cryp_read(cryp, CRYP_IV0LR));
 *tmp++ = cpu_to_be32(stm32_cryp_read(cryp, CRYP_IV0RR));

 if (is_aes(cryp)) {
  *tmp++ = cpu_to_be32(stm32_cryp_read(cryp, CRYP_IV1LR));
  *tmp++ = cpu_to_be32(stm32_cryp_read(cryp, CRYP_IV1RR));
 }
}
