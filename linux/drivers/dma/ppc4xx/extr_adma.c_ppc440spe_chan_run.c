
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xor_regs {int crsr; } ;
struct ppc440spe_adma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int id; struct xor_regs* xor_reg; } ;





 int XOR_CRSR_64BA_BIT ;
 int XOR_CRSR_XAE_BIT ;
 int iowrite32be (int,int *) ;

__attribute__((used)) static void ppc440spe_chan_run(struct ppc440spe_adma_chan *chan)
{
 struct xor_regs *xor_reg;

 switch (chan->device->id) {
 case 130:
 case 129:

  break;
 case 128:

  xor_reg = chan->device->xor_reg;


  iowrite32be(XOR_CRSR_64BA_BIT | XOR_CRSR_XAE_BIT,
       &xor_reg->crsr);
  break;
 }
}
