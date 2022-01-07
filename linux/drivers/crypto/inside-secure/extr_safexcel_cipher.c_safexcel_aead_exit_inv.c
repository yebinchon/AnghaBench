
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct safexcel_inv_result {int dummy; } ;
struct safexcel_cipher_req {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct aead_request {int dummy; } ;
struct TYPE_7__ {int base; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EIP197_AEAD_REQ_SIZE ;
 int EIP197_REQUEST_ON_STACK (TYPE_1__*,int ,int ) ;
 int __crypto_aead_cast (struct crypto_tfm*) ;
 int aead ;
 struct safexcel_cipher_req* aead_request_ctx (TYPE_1__*) ;
 int aead_request_set_callback (TYPE_1__*,int ,int ,struct safexcel_inv_result*) ;
 int aead_request_set_tfm (TYPE_1__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* req ;
 int safexcel_cipher_exit_inv (struct crypto_tfm*,int *,struct safexcel_cipher_req*,struct safexcel_inv_result*) ;
 int safexcel_inv_complete ;

__attribute__((used)) static int safexcel_aead_exit_inv(struct crypto_tfm *tfm)
{
 EIP197_REQUEST_ON_STACK(req, aead, EIP197_AEAD_REQ_SIZE);
 struct safexcel_cipher_req *sreq = aead_request_ctx(req);
 struct safexcel_inv_result result = {};

 memset(req, 0, sizeof(struct aead_request));

 aead_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
      safexcel_inv_complete, &result);
 aead_request_set_tfm(req, __crypto_aead_cast(tfm));

 return safexcel_cipher_exit_inv(tfm, &req->base, sreq, &result);
}
