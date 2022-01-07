
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adf_service_unregister (int *) ;
 int qat_crypto ;

int qat_crypto_unregister(void)
{
 return adf_service_unregister(&qat_crypto);
}
