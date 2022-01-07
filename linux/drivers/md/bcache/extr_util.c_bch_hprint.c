
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ssize_t ;
typedef int int64_t ;


 int sprintf (char*,char*,int,int,char const) ;

ssize_t bch_hprint(char *buf, int64_t v)
{
 static const char units[] = "?kMGTPEZY";
 int u = 0, t;

 uint64_t q;

 if (v < 0)
  q = -v;
 else
  q = v;





 do {
  u++;

  t = q & ~(~0 << 10);
  q >>= 10;
 } while (q >= 1000);

 if (v < 0)



  return sprintf(buf, "-%llu.%i%c", q, t * 10 / 1024, units[u]);
 else
  return sprintf(buf, "%llu.%i%c", q, t * 10 / 1024, units[u]);
}
