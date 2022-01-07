
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkcipher_desc {int info; } ;
struct aead_request {int assoclen; int iv; } ;


 int ccm_nx_encrypt (struct aead_request*,struct blkcipher_desc*,int ) ;
 int crypto_ccm_check_iv (int ) ;

__attribute__((used)) static int ccm_aes_nx_encrypt(struct aead_request *req)
{
 struct blkcipher_desc desc;
 int rc;

 desc.info = req->iv;

 rc = crypto_ccm_check_iv(desc.info);
 if (rc)
  return rc;

 return ccm_nx_encrypt(req, &desc, req->assoclen);
}
