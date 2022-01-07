
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct virtio_crypto {unsigned int crypto_services; unsigned int cipher_algo_l; unsigned int cipher_algo_h; unsigned int hash_algo; unsigned int mac_algo_l; unsigned int mac_algo_h; unsigned int aead_algo; } ;







bool virtcrypto_algo_is_supported(struct virtio_crypto *vcrypto,
      uint32_t service,
      uint32_t algo)
{
 uint32_t service_mask = 1u << service;
 uint32_t algo_mask = 0;
 bool low = 1;

 if (algo > 31) {
  algo -= 32;
  low = 0;
 }

 if (!(vcrypto->crypto_services & service_mask))
  return 0;

 switch (service) {
 case 130:
  if (low)
   algo_mask = vcrypto->cipher_algo_l;
  else
   algo_mask = vcrypto->cipher_algo_h;
  break;

 case 129:
  algo_mask = vcrypto->hash_algo;
  break;

 case 128:
  if (low)
   algo_mask = vcrypto->mac_algo_l;
  else
   algo_mask = vcrypto->mac_algo_h;
  break;

 case 131:
  algo_mask = vcrypto->aead_algo;
  break;
 }

 if (!(algo_mask & (1u << algo)))
  return 0;

 return 1;
}
