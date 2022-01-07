
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SPU_HASH_RESP_HDR_LEN ;
 int SPU_RESP_HDR_LEN ;

u16 spum_response_hdr_len(u16 auth_key_len, u16 enc_key_len, bool is_hash)
{
 if (is_hash)
  return SPU_HASH_RESP_HDR_LEN;
 else
  return SPU_RESP_HDR_LEN;
}
