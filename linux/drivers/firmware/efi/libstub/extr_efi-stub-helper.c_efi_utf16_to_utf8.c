
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u8 *efi_utf16_to_utf8(u8 *dst, const u16 *src, int n)
{
 unsigned int c;

 while (n--) {
  c = *src++;
  if (n && c >= 0xd800 && c <= 0xdbff &&
      *src >= 0xdc00 && *src <= 0xdfff) {
   c = 0x10000 + ((c & 0x3ff) << 10) + (*src & 0x3ff);
   src++;
   n--;
  }
  if (c >= 0xd800 && c <= 0xdfff)
   c = 0xfffd;
  if (c < 0x80) {
   *dst++ = c;
   continue;
  }
  if (c < 0x800) {
   *dst++ = 0xc0 + (c >> 6);
   goto t1;
  }
  if (c < 0x10000) {
   *dst++ = 0xe0 + (c >> 12);
   goto t2;
  }
  *dst++ = 0xf0 + (c >> 18);
  *dst++ = 0x80 + ((c >> 12) & 0x3f);
 t2:
  *dst++ = 0x80 + ((c >> 6) & 0x3f);
 t1:
  *dst++ = 0x80 + (c & 0x3f);
 }

 return dst;
}
