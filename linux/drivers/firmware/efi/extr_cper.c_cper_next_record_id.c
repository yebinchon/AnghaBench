
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int time64_t ;
typedef int atomic64_t ;


 int atomic64_inc_return (int *) ;
 int atomic64_read (int *) ;
 int atomic64_set (int *,int) ;
 int ktime_get_real_seconds () ;

u64 cper_next_record_id(void)
{
 static atomic64_t seq;

 if (!atomic64_read(&seq)) {
  time64_t time = ktime_get_real_seconds();







  if (time < 0x80000000)
   atomic64_set(&seq, (ktime_get_real_seconds()) << 32);
  else
   atomic64_set(&seq, 0x8000000000000000ull |
        ktime_get_real_seconds() << 24);
 }

 return atomic64_inc_return(&seq);
}
