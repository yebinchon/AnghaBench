
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic64_t ;


 scalar_t__ NX842_HIST_SLOTS ;
 int atomic64_inc (int *) ;
 int fls (unsigned int) ;
 int min (scalar_t__,int) ;

__attribute__((used)) static void ibm_nx842_incr_hist(atomic64_t *times, unsigned int time)
{
 int bucket = fls(time);

 if (bucket)
  bucket = min((NX842_HIST_SLOTS - 1), bucket - 1);

 atomic64_inc(&times[bucket]);
}
