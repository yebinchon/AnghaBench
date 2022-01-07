
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dataq; } ;
struct virtio_crypto_sym_request {TYPE_2__ base; int iv; } ;
struct ablkcipher_request {int dummy; } ;
struct TYPE_3__ {int engine; } ;


 int crypto_finalize_ablkcipher_request (int ,struct ablkcipher_request*,int) ;
 int kzfree (int ) ;
 int virtcrypto_clear_request (TYPE_2__*) ;

__attribute__((used)) static void virtio_crypto_ablkcipher_finalize_req(
 struct virtio_crypto_sym_request *vc_sym_req,
 struct ablkcipher_request *req,
 int err)
{
 crypto_finalize_ablkcipher_request(vc_sym_req->base.dataq->engine,
        req, err);
 kzfree(vc_sym_req->iv);
 virtcrypto_clear_request(&vc_sym_req->base);
}
