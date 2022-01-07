
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ide_timing {int mode; } ;


 struct ide_timing* ide_timing ;

struct ide_timing *ide_timing_find_mode(u8 speed)
{
 struct ide_timing *t;

 for (t = ide_timing; t->mode != speed; t++)
  if (t->mode == 0xff)
   return ((void*)0);
 return t;
}
