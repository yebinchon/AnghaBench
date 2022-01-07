
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_register_acomp (int *) ;
 int crypto_unregister_acomp (int *) ;
 int hisi_zip_acomp_gzip ;
 int hisi_zip_acomp_zlib ;
 int pr_err (char*) ;

int hisi_zip_register_to_crypto(void)
{
 int ret = 0;

 ret = crypto_register_acomp(&hisi_zip_acomp_zlib);
 if (ret) {
  pr_err("Zlib acomp algorithm registration failed\n");
  return ret;
 }

 ret = crypto_register_acomp(&hisi_zip_acomp_gzip);
 if (ret) {
  pr_err("Gzip acomp algorithm registration failed\n");
  crypto_unregister_acomp(&hisi_zip_acomp_zlib);
 }

 return ret;
}
