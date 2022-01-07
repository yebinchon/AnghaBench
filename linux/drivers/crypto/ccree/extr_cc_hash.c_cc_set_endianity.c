
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cc_hw_desc {int dummy; } ;


 scalar_t__ DRV_HASH_MD5 ;
 scalar_t__ DRV_HASH_SHA384 ;
 scalar_t__ DRV_HASH_SHA512 ;
 int HASH_DIGEST_RESULT_LITTLE_ENDIAN ;
 int set_bytes_swap (struct cc_hw_desc*,int) ;
 int set_cipher_config0 (struct cc_hw_desc*,int ) ;

__attribute__((used)) static void cc_set_endianity(u32 mode, struct cc_hw_desc *desc)
{
 if (mode == DRV_HASH_MD5 || mode == DRV_HASH_SHA384 ||
     mode == DRV_HASH_SHA512) {
  set_bytes_swap(desc, 1);
 } else {
  set_cipher_config0(desc, HASH_DIGEST_RESULT_LITTLE_ENDIAN);
 }
}
