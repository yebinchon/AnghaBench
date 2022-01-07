
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct intel_ring {int emit; int tail; int head; int space; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void describe_ctx_ring(struct seq_file *m, struct intel_ring *ring)
{
 seq_printf(m, " (ringbuffer, space: %d, head: %u, tail: %u, emit: %u)",
     ring->space, ring->head, ring->tail, ring->emit);
}
