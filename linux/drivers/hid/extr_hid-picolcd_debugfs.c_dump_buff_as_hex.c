
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char* hex_asc ;

__attribute__((used)) static void dump_buff_as_hex(char *dst, size_t dst_sz, const u8 *data,
  const size_t data_len)
{
 int i, j;
 for (i = j = 0; i < data_len && j + 4 < dst_sz; i++) {
  dst[j++] = hex_asc[(data[i] >> 4) & 0x0f];
  dst[j++] = hex_asc[data[i] & 0x0f];
  dst[j++] = ' ';
 }
 dst[j] = '\0';
 if (j > 0)
  dst[j-1] = '\n';
 if (i < data_len && j > 2)
  dst[j-2] = dst[j-3] = '.';
}
