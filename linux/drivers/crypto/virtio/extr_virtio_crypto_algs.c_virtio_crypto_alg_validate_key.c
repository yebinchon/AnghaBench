
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;





 int EINVAL ;
 int VIRTIO_CRYPTO_CIPHER_AES_CBC ;
 int pr_err (char*,int) ;

__attribute__((used)) static int
virtio_crypto_alg_validate_key(int key_len, uint32_t *alg)
{
 switch (key_len) {
 case 130:
 case 129:
 case 128:
  *alg = VIRTIO_CRYPTO_CIPHER_AES_CBC;
  break;
 default:
  pr_err("virtio_crypto: Unsupported key length: %d\n",
   key_len);
  return -EINVAL;
 }
 return 0;
}
