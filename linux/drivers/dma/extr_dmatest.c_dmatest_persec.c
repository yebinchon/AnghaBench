
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 unsigned long long INT_TO_FIXPT (unsigned long long) ;
 int UINT_MAX ;
 int do_div (unsigned long long,int) ;

__attribute__((used)) static unsigned long long dmatest_persec(s64 runtime, unsigned int val)
{
 unsigned long long per_sec = 1000000;

 if (runtime <= 0)
  return 0;


 while (runtime > UINT_MAX) {
  runtime >>= 1;
  per_sec <<= 1;
 }

 per_sec *= val;
 per_sec = INT_TO_FIXPT(per_sec);
 do_div(per_sec, runtime);

 return per_sec;
}
