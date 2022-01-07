
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_info {int relative_throughput; int in_flight_size; } ;


 size_t ST_MAX_INFLIGHT_SIZE ;
 size_t ST_MAX_RELATIVE_THROUGHPUT_SHIFT ;
 size_t atomic_read (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int st_compare_load(struct path_info *pi1, struct path_info *pi2,
      size_t incoming)
{
 size_t sz1, sz2, st1, st2;

 sz1 = atomic_read(&pi1->in_flight_size);
 sz2 = atomic_read(&pi2->in_flight_size);




 if (pi1->relative_throughput == pi2->relative_throughput)
  return sz1 - sz2;





 if (sz1 == sz2 ||
     !pi1->relative_throughput || !pi2->relative_throughput)
  return pi2->relative_throughput - pi1->relative_throughput;
 sz1 += incoming;
 sz2 += incoming;
 if (unlikely(sz1 >= ST_MAX_INFLIGHT_SIZE ||
       sz2 >= ST_MAX_INFLIGHT_SIZE)) {





  sz1 >>= ST_MAX_RELATIVE_THROUGHPUT_SHIFT;
  sz2 >>= ST_MAX_RELATIVE_THROUGHPUT_SHIFT;
 }
 st1 = sz1 * pi2->relative_throughput;
 st2 = sz2 * pi1->relative_throughput;
 if (st1 != st2)
  return st1 - st2;




 return pi2->relative_throughput - pi1->relative_throughput;
}
