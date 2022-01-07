
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {int q; unsigned long tail; int qhandle; } ;


 unsigned long HV_EOK ;
 unsigned long spu_next_offset (struct spu_queue*,void*) ;
 unsigned long sun4v_ncs_settail (int ,unsigned long) ;

__attribute__((used)) static unsigned long spu_queue_submit(struct spu_queue *q, void *last)
{
 unsigned long hv_ret, new_tail;

 new_tail = spu_next_offset(q, last - q->q);

 hv_ret = sun4v_ncs_settail(q->qhandle, new_tail);
 if (hv_ret == HV_EOK)
  q->tail = new_tail;
 return hv_ret;
}
