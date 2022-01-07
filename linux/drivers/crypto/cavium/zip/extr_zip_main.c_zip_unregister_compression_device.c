
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_alg (int *) ;
 int crypto_unregister_scomp (int *) ;
 int zip_comp_deflate ;
 int zip_comp_lzs ;
 int zip_scomp_deflate ;
 int zip_scomp_lzs ;

__attribute__((used)) static void zip_unregister_compression_device(void)
{
 crypto_unregister_alg(&zip_comp_deflate);
 crypto_unregister_alg(&zip_comp_lzs);
 crypto_unregister_scomp(&zip_scomp_deflate);
 crypto_unregister_scomp(&zip_scomp_lzs);
}
