
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dust_device {int badblocklist; } ;
struct badblock {int dummy; } ;
typedef int sector_t ;


 int DM_MAPIO_KILL ;
 int DM_MAPIO_REMAPPED ;
 struct badblock* dust_rb_search (int *,int ) ;

__attribute__((used)) static int __dust_map_read(struct dust_device *dd, sector_t thisblock)
{
 struct badblock *bblk = dust_rb_search(&dd->badblocklist, thisblock);

 if (bblk)
  return DM_MAPIO_KILL;

 return DM_MAPIO_REMAPPED;
}
