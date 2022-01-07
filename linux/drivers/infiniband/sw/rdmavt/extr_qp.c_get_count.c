
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rvt_rq {scalar_t__ size; } ;



__attribute__((used)) static u32 get_count(struct rvt_rq *rq, u32 tail, u32 head)
{
 u32 count;

 count = head;

 if (count >= rq->size)
  count = 0;
 if (count < tail)
  count += rq->size - tail;
 else
  count -= tail;

 return count;
}
