
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_i2c_chan {int adapter; } ;


 int i2c_del_adapter (int *) ;
 int kfree (struct psb_intel_i2c_chan*) ;

void psb_intel_i2c_destroy(struct psb_intel_i2c_chan *chan)
{
 if (!chan)
  return;

 i2c_del_adapter(&chan->adapter);
 kfree(chan);
}
