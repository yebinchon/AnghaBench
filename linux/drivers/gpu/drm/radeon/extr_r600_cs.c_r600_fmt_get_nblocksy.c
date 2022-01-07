
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {unsigned int blockheight; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* color_formats_table ;

int r600_fmt_get_nblocksy(u32 format, u32 h)
{
 unsigned bh;

 if (format >= ARRAY_SIZE(color_formats_table))
  return 0;

 bh = color_formats_table[format].blockheight;
 if (bh == 0)
  return 0;

 return (h + bh - 1) / bh;
}
