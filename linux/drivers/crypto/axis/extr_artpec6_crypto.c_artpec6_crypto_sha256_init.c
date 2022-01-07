
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int ARTPEC6_CRYPTO_HASH_SHA256 ;
 int artpec6_crypto_init_hash (struct ahash_request*,int ,int ) ;

__attribute__((used)) static int artpec6_crypto_sha256_init(struct ahash_request *req)
{
 return artpec6_crypto_init_hash(req, ARTPEC6_CRYPTO_HASH_SHA256, 0);
}
