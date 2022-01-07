
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct hidma_lldev {int * tre_write_offset; int * evre_processed_off; int * evre_ring_size; int evre_dma; int * evre_ring; int * evca; int pending_tre_count; int * tre_processed_off; int * tre_ring_size; int tre_dma; int * tre_ring; int * trca; int * nr_tres; int * chidx; int * evch_state; int * trch_state; int * initialized; } ;


 int * atomic_read (int *) ;
 int seq_printf (struct seq_file*,char*,int *) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void hidma_ll_devstats(struct seq_file *s, void *llhndl)
{
 struct hidma_lldev *lldev = llhndl;

 seq_puts(s, "------Device -----\n");
 seq_printf(s, "lldev init = 0x%x\n", lldev->initialized);
 seq_printf(s, "trch_state = 0x%x\n", lldev->trch_state);
 seq_printf(s, "evch_state = 0x%x\n", lldev->evch_state);
 seq_printf(s, "chidx = 0x%x\n", lldev->chidx);
 seq_printf(s, "nr_tres = 0x%x\n", lldev->nr_tres);
 seq_printf(s, "trca=%p\n", lldev->trca);
 seq_printf(s, "tre_ring=%p\n", lldev->tre_ring);
 seq_printf(s, "tre_ring_handle=%pap\n", &lldev->tre_dma);
 seq_printf(s, "tre_ring_size = 0x%x\n", lldev->tre_ring_size);
 seq_printf(s, "tre_processed_off = 0x%x\n", lldev->tre_processed_off);
 seq_printf(s, "pending_tre_count=%d\n",
   atomic_read(&lldev->pending_tre_count));
 seq_printf(s, "evca=%p\n", lldev->evca);
 seq_printf(s, "evre_ring=%p\n", lldev->evre_ring);
 seq_printf(s, "evre_ring_handle=%pap\n", &lldev->evre_dma);
 seq_printf(s, "evre_ring_size = 0x%x\n", lldev->evre_ring_size);
 seq_printf(s, "evre_processed_off = 0x%x\n", lldev->evre_processed_off);
 seq_printf(s, "tre_write_offset = 0x%x\n", lldev->tre_write_offset);
}
