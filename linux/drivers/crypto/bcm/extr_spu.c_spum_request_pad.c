
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef enum hash_mode { ____Placeholder_hash_mode } hash_mode ;
typedef enum hash_alg { ____Placeholder_hash_alg } hash_alg ;


 int HASH_ALG_AES ;
 int HASH_ALG_MD5 ;
 int HASH_MODE_XCBC ;
 int cpu_to_be64 (int) ;
 int cpu_to_le64 (int) ;
 int flow_log (char*,int ) ;
 int memset (int*,int ,int ) ;

void spum_request_pad(u8 *pad_start,
        u32 gcm_ccm_padding,
        u32 hash_pad_len,
        enum hash_alg auth_alg,
        enum hash_mode auth_mode,
        unsigned int total_sent, u32 status_padding)
{
 u8 *ptr = pad_start;


 if (gcm_ccm_padding > 0) {
  flow_log("  GCM: padding to 16 byte alignment: %u bytes\n",
    gcm_ccm_padding);
  memset(ptr, 0, gcm_ccm_padding);
  ptr += gcm_ccm_padding;
 }

 if (hash_pad_len > 0) {

  memset(ptr, 0, hash_pad_len);

  if ((auth_alg == HASH_ALG_AES) &&
      (auth_mode == HASH_MODE_XCBC)) {

   ptr += hash_pad_len;
  } else {

   *ptr = 0x80;
   ptr += (hash_pad_len - sizeof(u64));


   if (auth_alg == HASH_ALG_MD5)
    *(u64 *)ptr = cpu_to_le64((u64)total_sent * 8);
   else
    *(u64 *)ptr = cpu_to_be64((u64)total_sent * 8);
   ptr += sizeof(u64);
  }
 }


 if (status_padding > 0) {
  flow_log("  STAT: padding to 4 byte alignment: %u bytes\n",
    status_padding);

  memset(ptr, 0, status_padding);
  ptr += status_padding;
 }
}
