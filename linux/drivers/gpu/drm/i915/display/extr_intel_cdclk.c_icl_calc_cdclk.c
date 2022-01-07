
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int const*) ;
 int MISSING_CASE (unsigned int) ;
 int WARN_ON (int) ;

__attribute__((used)) static int icl_calc_cdclk(int min_cdclk, unsigned int ref)
{
 static const int ranges_24[] = { 180000, 192000, 312000, 552000, 648000 };
 static const int ranges_19_38[] = { 172800, 192000, 307200, 556800, 652800 };
 const int *ranges;
 int len, i;

 switch (ref) {
 default:
  MISSING_CASE(ref);

 case 24000:
  ranges = ranges_24;
  len = ARRAY_SIZE(ranges_24);
  break;
 case 19200:
 case 38400:
  ranges = ranges_19_38;
  len = ARRAY_SIZE(ranges_19_38);
  break;
 }

 for (i = 0; i < len; i++) {
  if (min_cdclk <= ranges[i])
   return ranges[i];
 }

 WARN_ON(min_cdclk > ranges[len - 1]);
 return ranges[len - 1];
}
