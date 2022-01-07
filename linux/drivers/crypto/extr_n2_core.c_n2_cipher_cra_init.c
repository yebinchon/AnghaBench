
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct n2_request_context {int dummy; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;



__attribute__((used)) static int n2_cipher_cra_init(struct crypto_tfm *tfm)
{
 tfm->crt_ablkcipher.reqsize = sizeof(struct n2_request_context);
 return 0;
}
