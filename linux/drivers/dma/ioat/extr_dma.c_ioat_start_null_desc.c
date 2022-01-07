
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int prep_lock; int state; } ;


 int IOAT_CHAN_DOWN ;
 int __ioat_start_null_desc (struct ioatdma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

void ioat_start_null_desc(struct ioatdma_chan *ioat_chan)
{
 spin_lock_bh(&ioat_chan->prep_lock);
 if (!test_bit(IOAT_CHAN_DOWN, &ioat_chan->state))
  __ioat_start_null_desc(ioat_chan);
 spin_unlock_bh(&ioat_chan->prep_lock);
}
