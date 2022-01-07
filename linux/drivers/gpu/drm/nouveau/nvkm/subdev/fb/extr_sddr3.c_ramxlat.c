
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ramxlat {int id; int enc; } ;


 int EINVAL ;

__attribute__((used)) static inline int
ramxlat(const struct ramxlat *xlat, int id)
{
 while (xlat->id >= 0) {
  if (xlat->id == id)
   return xlat->enc;
  xlat++;
 }
 return -EINVAL;
}
