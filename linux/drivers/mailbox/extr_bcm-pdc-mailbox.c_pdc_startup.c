
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int con_priv; } ;


 int PDC_RINGSET ;
 int pdc_ring_init (int ,int ) ;

__attribute__((used)) static int pdc_startup(struct mbox_chan *chan)
{
 return pdc_ring_init(chan->con_priv, PDC_RINGSET);
}
