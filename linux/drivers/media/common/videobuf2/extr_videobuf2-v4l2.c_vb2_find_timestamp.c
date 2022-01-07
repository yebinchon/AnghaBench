
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vb2_queue {unsigned int num_buffers; TYPE_1__** bufs; } ;
struct TYPE_2__ {scalar_t__ timestamp; scalar_t__ copied_timestamp; } ;



int vb2_find_timestamp(const struct vb2_queue *q, u64 timestamp,
         unsigned int start_idx)
{
 unsigned int i;

 for (i = start_idx; i < q->num_buffers; i++)
  if (q->bufs[i]->copied_timestamp &&
      q->bufs[i]->timestamp == timestamp)
   return i;
 return -1;
}
