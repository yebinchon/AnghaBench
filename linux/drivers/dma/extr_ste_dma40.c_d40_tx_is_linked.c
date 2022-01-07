
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d40_chan {TYPE_1__* lcpa; } ;
struct TYPE_2__ {int lcsp3; } ;


 int D40_CHAN_REG_SDLNK ;
 int D40_MEM_LCSP3_DLOS_MASK ;
 int D40_SREG_LNK_PHYS_LNK_MASK ;
 int * chan_base (struct d40_chan*) ;
 scalar_t__ chan_is_logical (struct d40_chan*) ;
 int readl (int *) ;

__attribute__((used)) static bool d40_tx_is_linked(struct d40_chan *d40c)
{
 bool is_link;

 if (chan_is_logical(d40c))
  is_link = readl(&d40c->lcpa->lcsp3) & D40_MEM_LCSP3_DLOS_MASK;
 else
  is_link = readl(chan_base(d40c) + D40_CHAN_REG_SDLNK)
     & D40_SREG_LNK_PHYS_LNK_MASK;

 return is_link;
}
