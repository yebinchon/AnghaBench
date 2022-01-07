
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct safexcel_inv_result {int dummy; } ;
struct safexcel_cipher_req {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_7__ {int base; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EIP197_REQUEST_ON_STACK (TYPE_1__*,int ,int ) ;
 int EIP197_SKCIPHER_REQ_SIZE ;
 int __crypto_skcipher_cast (struct crypto_tfm*) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* req ;
 int safexcel_cipher_exit_inv (struct crypto_tfm*,int *,struct safexcel_cipher_req*,struct safexcel_inv_result*) ;
 int safexcel_inv_complete ;
 int skcipher ;
 struct safexcel_cipher_req* skcipher_request_ctx (TYPE_1__*) ;
 int skcipher_request_set_callback (TYPE_1__*,int ,int ,struct safexcel_inv_result*) ;
 int skcipher_request_set_tfm (TYPE_1__*,int ) ;

__attribute__((used)) static int safexcel_skcipher_exit_inv(struct crypto_tfm *tfm)
{
 EIP197_REQUEST_ON_STACK(req, skcipher, EIP197_SKCIPHER_REQ_SIZE);
 struct safexcel_cipher_req *sreq = skcipher_request_ctx(req);
 struct safexcel_inv_result result = {};

 memset(req, 0, sizeof(struct skcipher_request));

 skcipher_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
          safexcel_inv_complete, &result);
 skcipher_request_set_tfm(req, __crypto_skcipher_cast(tfm));

 return safexcel_cipher_exit_inv(tfm, &req->base, sreq, &result);
}
