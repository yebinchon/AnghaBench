
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct send_context {int flags; scalar_t__ credits; unsigned long fill; unsigned long alloc_free; size_t sr_head; size_t fill_wrap; size_t sr_size; scalar_t__ size; scalar_t__ base_addr; int alloc_lock; TYPE_1__* sr; int * buffers_allocated; int free; } ;
struct TYPE_4__ {scalar_t__ val64; } ;
struct pio_buf {unsigned long sent_at; TYPE_2__ carry; scalar_t__ carry_bytes; scalar_t__ qw_written; scalar_t__ end; scalar_t__ start; struct send_context* sc; void* arg; int cb; } ;
typedef int pio_release_cb ;
struct TYPE_3__ {struct pio_buf pbuf; } ;


 int ECOMM ;
 struct pio_buf* ERR_PTR (int ) ;
 size_t PIO_BLOCK_SIZE ;
 void* READ_ONCE (int ) ;
 int SCF_ENABLED ;
 unsigned long dwords_to_blocks (size_t) ;
 int preempt_disable () ;
 int sc_release_update (struct send_context*) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int this_cpu_inc (int ) ;
 scalar_t__ unlikely (int) ;

struct pio_buf *sc_buffer_alloc(struct send_context *sc, u32 dw_len,
    pio_release_cb cb, void *arg)
{
 struct pio_buf *pbuf = ((void*)0);
 unsigned long flags;
 unsigned long avail;
 unsigned long blocks = dwords_to_blocks(dw_len);
 u32 fill_wrap;
 int trycount = 0;
 u32 head, next;

 spin_lock_irqsave(&sc->alloc_lock, flags);
 if (!(sc->flags & SCF_ENABLED)) {
  spin_unlock_irqrestore(&sc->alloc_lock, flags);
  return ERR_PTR(-ECOMM);
 }

retry:
 avail = (unsigned long)sc->credits - (sc->fill - sc->alloc_free);
 if (blocks > avail) {

  if (unlikely(trycount)) {
   spin_unlock_irqrestore(&sc->alloc_lock, flags);
   goto done;
  }

  sc->alloc_free = READ_ONCE(sc->free);
  avail =
   (unsigned long)sc->credits -
   (sc->fill - sc->alloc_free);
  if (blocks > avail) {

   sc_release_update(sc);
   sc->alloc_free = READ_ONCE(sc->free);
   trycount++;
   goto retry;
  }
 }



 preempt_disable();
 this_cpu_inc(*sc->buffers_allocated);


 head = sc->sr_head;


 sc->fill += blocks;
 fill_wrap = sc->fill_wrap;
 sc->fill_wrap += blocks;
 if (sc->fill_wrap >= sc->credits)
  sc->fill_wrap = sc->fill_wrap - sc->credits;
 pbuf = &sc->sr[head].pbuf;
 pbuf->sent_at = sc->fill;
 pbuf->cb = cb;
 pbuf->arg = arg;
 pbuf->sc = sc;



 next = head + 1;
 if (next >= sc->sr_size)
  next = 0;




 smp_wmb();
 sc->sr_head = next;
 spin_unlock_irqrestore(&sc->alloc_lock, flags);


 pbuf->start = sc->base_addr + fill_wrap * PIO_BLOCK_SIZE;
 pbuf->end = sc->base_addr + sc->size;
 pbuf->qw_written = 0;
 pbuf->carry_bytes = 0;
 pbuf->carry.val64 = 0;
done:
 return pbuf;
}
