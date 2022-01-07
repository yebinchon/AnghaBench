
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int memcpy (int*,int*,int) ;

__attribute__((used)) static void copy_cursor_image(u8 *src, u8 *dst, u32 width, u32 height,
         size_t mask_size)
{
 size_t line_size = (width + 7) / 8;
 u32 i, j;

 memcpy(dst + mask_size, src, width * height * 4);
 for (i = 0; i < height; ++i)
  for (j = 0; j < width; ++j)
   if (((u32 *)src)[i * width + j] > 0xf0000000)
    dst[i * line_size + j / 8] |= (0x80 >> (j % 8));
}
