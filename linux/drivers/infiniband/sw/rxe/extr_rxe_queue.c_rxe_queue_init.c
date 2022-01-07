
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue_buf {int dummy; } ;
struct rxe_queue {unsigned int elem_size; unsigned int index_mask; size_t buf_size; TYPE_1__* buf; int log2_elem_size; struct rxe_dev* rxe; } ;
struct rxe_dev {int dummy; } ;
struct TYPE_2__ {unsigned int index_mask; int log2_elem_size; } ;


 int GFP_KERNEL ;
 unsigned int cache_line_size () ;
 int kfree (struct rxe_queue*) ;
 struct rxe_queue* kmalloc (int,int ) ;
 int order_base_2 (unsigned int) ;
 unsigned int roundup_pow_of_two (unsigned int) ;
 TYPE_1__* vmalloc_user (size_t) ;

struct rxe_queue *rxe_queue_init(struct rxe_dev *rxe,
     int *num_elem,
     unsigned int elem_size)
{
 struct rxe_queue *q;
 size_t buf_size;
 unsigned int num_slots;


 if (*num_elem < 0)
  goto err1;

 q = kmalloc(sizeof(*q), GFP_KERNEL);
 if (!q)
  goto err1;

 q->rxe = rxe;


 q->elem_size = elem_size;


 if (elem_size < cache_line_size())
  elem_size = cache_line_size();
 elem_size = roundup_pow_of_two(elem_size);

 q->log2_elem_size = order_base_2(elem_size);

 num_slots = *num_elem + 1;
 num_slots = roundup_pow_of_two(num_slots);
 q->index_mask = num_slots - 1;

 buf_size = sizeof(struct rxe_queue_buf) + num_slots * elem_size;

 q->buf = vmalloc_user(buf_size);
 if (!q->buf)
  goto err2;

 q->buf->log2_elem_size = q->log2_elem_size;
 q->buf->index_mask = q->index_mask;

 q->buf_size = buf_size;

 *num_elem = num_slots - 1;
 return q;

err2:
 kfree(q);
err1:
 return ((void*)0);
}
