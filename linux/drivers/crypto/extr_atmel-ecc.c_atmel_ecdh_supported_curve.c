
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ATMEL_ECC_NIST_P256_N_SIZE ;
 unsigned int ECC_CURVE_NIST_P256 ;

__attribute__((used)) static unsigned int atmel_ecdh_supported_curve(unsigned int curve_id)
{
 if (curve_id == ECC_CURVE_NIST_P256)
  return ATMEL_ECC_NIST_P256_N_SIZE;

 return 0;
}
