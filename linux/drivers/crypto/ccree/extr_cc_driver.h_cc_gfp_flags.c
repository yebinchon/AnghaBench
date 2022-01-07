
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int flags; } ;
typedef int gfp_t ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;

__attribute__((used)) static inline gfp_t cc_gfp_flags(struct crypto_async_request *req)
{
 return (req->flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
   GFP_KERNEL : GFP_ATOMIC;
}
