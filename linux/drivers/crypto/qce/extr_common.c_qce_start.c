
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_async_request {int dummy; } ;




 int EINVAL ;
 int qce_setup_regs_ablkcipher (struct crypto_async_request*,int,int) ;
 int qce_setup_regs_ahash (struct crypto_async_request*,int,int) ;

int qce_start(struct crypto_async_request *async_req, u32 type, u32 totallen,
       u32 offset)
{
 switch (type) {
 case 129:
  return qce_setup_regs_ablkcipher(async_req, totallen, offset);
 case 128:
  return qce_setup_regs_ahash(async_req, totallen, offset);
 default:
  return -EINVAL;
 }
}
