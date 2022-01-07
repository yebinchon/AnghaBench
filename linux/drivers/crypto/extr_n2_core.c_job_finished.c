
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {int dummy; } ;



__attribute__((used)) static inline bool job_finished(struct spu_queue *q, unsigned int offset,
    unsigned long old_head, unsigned long new_head)
{
 if (old_head <= new_head) {
  if (offset > old_head && offset <= new_head)
   return 1;
 } else {
  if (offset > old_head || offset <= new_head)
   return 1;
 }
 return 0;
}
