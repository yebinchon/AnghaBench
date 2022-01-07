
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {unsigned long head; unsigned long tail; } ;


 unsigned long CWQ_ENTRY_SIZE ;
 unsigned long CWQ_NUM_ENTRIES ;

__attribute__((used)) static int spu_queue_num_free(struct spu_queue *q)
{
 unsigned long head = q->head;
 unsigned long tail = q->tail;
 unsigned long end = (CWQ_ENTRY_SIZE * CWQ_NUM_ENTRIES);
 unsigned long diff;

 if (head > tail)
  diff = head - tail;
 else
  diff = (end - tail) + head;

 return (diff / CWQ_ENTRY_SIZE) - 1;
}
