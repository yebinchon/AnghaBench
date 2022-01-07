
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms5611_osr {unsigned short rate; } ;



__attribute__((used)) static const struct ms5611_osr *ms5611_find_osr(int rate,
      const struct ms5611_osr *osr,
      size_t count)
{
 unsigned int r;

 for (r = 0; r < count; r++)
  if ((unsigned short)rate == osr[r].rate)
   break;
 if (r >= count)
  return ((void*)0);
 return &osr[r];
}
