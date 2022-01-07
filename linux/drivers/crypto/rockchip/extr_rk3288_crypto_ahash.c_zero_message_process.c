
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ahash {int dummy; } ;
struct ahash_request {int result; } ;


 int EINVAL ;



 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int md5_zero_message_hash ;
 int memcpy (int ,int ,int) ;
 int sha1_zero_message_hash ;
 int sha256_zero_message_hash ;

__attribute__((used)) static int zero_message_process(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 int rk_digest_size = crypto_ahash_digestsize(tfm);

 switch (rk_digest_size) {
 case 129:
  memcpy(req->result, sha1_zero_message_hash, rk_digest_size);
  break;
 case 128:
  memcpy(req->result, sha256_zero_message_hash, rk_digest_size);
  break;
 case 130:
  memcpy(req->result, md5_zero_message_hash, rk_digest_size);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
