
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icside_state {int type; int ioc_base; } ;
struct expansion_card {int dma; } ;




 int NO_DMA ;
 struct icside_state* ecard_get_drvdata (struct expansion_card*) ;
 int ecard_release_resources (struct expansion_card*) ;
 int ecard_set_drvdata (struct expansion_card*,int *) ;
 int free_dma (int ) ;
 int icside_irqdisable_arcin_v5 (struct expansion_card*,int ) ;
 int icside_irqdisable_arcin_v6 (struct expansion_card*,int ) ;
 int kfree (struct icside_state*) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void icside_remove(struct expansion_card *ec)
{
 struct icside_state *state = ecard_get_drvdata(ec);

 switch (state->type) {
 case 129:



  icside_irqdisable_arcin_v5(ec, 0);
  break;

 case 128:

  if (ec->dma != NO_DMA)
   free_dma(ec->dma);


  icside_irqdisable_arcin_v6(ec, 0);


  writeb(0, state->ioc_base);
  break;
 }

 ecard_set_drvdata(ec, ((void*)0));

 kfree(state);
 ecard_release_resources(ec);
}
