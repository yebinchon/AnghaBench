
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int __be64 ;


 int __cpu_to_be64 (unsigned int) ;
 int memcpy (unsigned char*,int *,int) ;
 int memset (unsigned char*,int ,int) ;





__attribute__((used)) static size_t
create_hash_pad(int oper, unsigned char *dst, u64 dgstlen, u64 bitcount)
{
 unsigned int mod, target, diff, pad_bytes, size_bytes;
 __be64 bits = __cpu_to_be64(bitcount);

 switch (oper) {
 case 129:
 case 128:
 case 131:
 case 130:
  target = 448 / 8;
  mod = 512 / 8;
  size_bytes = 8;
  break;
 default:
  target = 896 / 8;
  mod = 1024 / 8;
  size_bytes = 16;
  break;
 }

 target -= 1;
 diff = dgstlen & (mod - 1);
 pad_bytes = diff > target ? target + mod - diff : target - diff;

 memset(dst + 1, 0, pad_bytes);
 dst[0] = 0x80;

 if (size_bytes == 16) {
  memset(dst + 1 + pad_bytes, 0, 8);
  memcpy(dst + 1 + pad_bytes + 8, &bits, 8);
 } else {
  memcpy(dst + 1 + pad_bytes, &bits, 8);
 }

 return pad_bytes + size_bytes + 1;
}
