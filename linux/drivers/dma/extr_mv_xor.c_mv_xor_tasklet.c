
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_chan {int lock; } ;


 int mv_chan_slot_cleanup (struct mv_xor_chan*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mv_xor_tasklet(unsigned long data)
{
 struct mv_xor_chan *chan = (struct mv_xor_chan *) data;

 spin_lock(&chan->lock);
 mv_chan_slot_cleanup(chan);
 spin_unlock(&chan->lock);
}
