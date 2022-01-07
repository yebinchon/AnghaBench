
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * algs_sha1_sha224_sha256 ;
 int * algs_sha384_sha512 ;
 int crypto_unregister_ahash (int *) ;

__attribute__((used)) static void mtk_sha_unregister_algs(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(algs_sha1_sha224_sha256); i++)
  crypto_unregister_ahash(&algs_sha1_sha224_sha256[i]);

 for (i = 0; i < ARRAY_SIZE(algs_sha384_sha512); i++)
  crypto_unregister_ahash(&algs_sha384_sha512[i]);
}
