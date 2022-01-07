
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int VPD_FAIL ;
 int VPD_OK ;

__attribute__((used)) static int vpd_decode_len(const u32 max_len, const u8 *in,
     u32 *length, u32 *decoded_len)
{
 u8 more;
 int i = 0;

 if (!length || !decoded_len)
  return VPD_FAIL;

 *length = 0;
 do {
  if (i >= max_len)
   return VPD_FAIL;

  more = in[i] & 0x80;
  *length <<= 7;
  *length |= in[i] & 0x7f;
  ++i;
 } while (more);

 *decoded_len = i;
 return VPD_OK;
}
