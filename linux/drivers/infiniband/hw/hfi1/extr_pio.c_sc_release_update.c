
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef size_t u32 ;
struct send_context {unsigned long free; size_t sr_tail; size_t sr_size; int release_lock; TYPE_1__* sr; int sr_head; int * hw_free; } ;
struct pio_buf {int arg; int (* cb ) (int ,int) ;int sent_at; } ;
struct TYPE_2__ {struct pio_buf pbuf; } ;


 unsigned long CR_COUNTER_MASK ;
 unsigned long CR_COUNTER_SHIFT ;
 unsigned long CR_COUNTER_SMASK ;
 size_t READ_ONCE (int ) ;
 int fill_code (unsigned long) ;
 unsigned long le64_to_cpu (int ) ;
 int sc_piobufavail (struct send_context*) ;
 scalar_t__ sent_before (unsigned long,int ) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;
 int trace_hfi1_piofree (struct send_context*,unsigned long) ;

void sc_release_update(struct send_context *sc)
{
 struct pio_buf *pbuf;
 u64 hw_free;
 u32 head, tail;
 unsigned long old_free;
 unsigned long free;
 unsigned long extra;
 unsigned long flags;
 int code;

 if (!sc)
  return;

 spin_lock_irqsave(&sc->release_lock, flags);

 hw_free = le64_to_cpu(*sc->hw_free);
 old_free = sc->free;
 extra = (((hw_free & CR_COUNTER_SMASK) >> CR_COUNTER_SHIFT)
   - (old_free & CR_COUNTER_MASK))
    & CR_COUNTER_MASK;
 free = old_free + extra;
 trace_hfi1_piofree(sc, extra);


 code = -1;
 head = READ_ONCE(sc->sr_head);
 tail = sc->sr_tail;
 while (head != tail) {
  pbuf = &sc->sr[tail].pbuf;

  if (sent_before(free, pbuf->sent_at)) {

   break;
  }
  if (pbuf->cb) {
   if (code < 0)
    code = fill_code(hw_free);
   (*pbuf->cb)(pbuf->arg, code);
  }

  tail++;
  if (tail >= sc->sr_size)
   tail = 0;
 }
 sc->sr_tail = tail;

 smp_wmb();
 sc->free = free;
 spin_unlock_irqrestore(&sc->release_lock, flags);
 sc_piobufavail(sc);
}
