
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_acomp (int *) ;
 int hisi_zip_acomp_gzip ;
 int hisi_zip_acomp_zlib ;

void hisi_zip_unregister_from_crypto(void)
{
 crypto_unregister_acomp(&hisi_zip_acomp_gzip);
 crypto_unregister_acomp(&hisi_zip_acomp_zlib);
}
