
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i915_request {int head; int tail; TYPE_3__* ring; TYPE_2__* batch; int postfix; } ;
struct drm_printer {int dummy; } ;
struct TYPE_6__ {unsigned int size; void* vaddr; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_5__ {TYPE_1__ node; } ;


 int GFP_ATOMIC ;
 int drm_printf (struct drm_printer*,char*,int,int ,int,unsigned int,unsigned int) ;
 int hexdump (struct drm_printer*,void*,int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 unsigned int lower_32_bits (int ) ;
 int memcpy (void*,void const*,int) ;
 unsigned int upper_32_bits (int ) ;

__attribute__((used)) static void print_request_ring(struct drm_printer *m, struct i915_request *rq)
{
 void *ring;
 int size;

 drm_printf(m,
     "[head %04x, postfix %04x, tail %04x, batch 0x%08x_%08x]:\n",
     rq->head, rq->postfix, rq->tail,
     rq->batch ? upper_32_bits(rq->batch->node.start) : ~0u,
     rq->batch ? lower_32_bits(rq->batch->node.start) : ~0u);

 size = rq->tail - rq->head;
 if (rq->tail < rq->head)
  size += rq->ring->size;

 ring = kmalloc(size, GFP_ATOMIC);
 if (ring) {
  const void *vaddr = rq->ring->vaddr;
  unsigned int head = rq->head;
  unsigned int len = 0;

  if (rq->tail < head) {
   len = rq->ring->size - head;
   memcpy(ring, vaddr + head, len);
   head = 0;
  }
  memcpy(ring + len, vaddr + head, size - len);

  hexdump(m, ring, size);
  kfree(ring);
 }
}
