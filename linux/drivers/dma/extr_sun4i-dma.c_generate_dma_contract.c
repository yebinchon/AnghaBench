
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_dma_contract {int completed_demands; int demands; } ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 struct sun4i_dma_contract* kzalloc (int,int ) ;

__attribute__((used)) static struct sun4i_dma_contract *generate_dma_contract(void)
{
 struct sun4i_dma_contract *contract;

 contract = kzalloc(sizeof(*contract), GFP_NOWAIT);
 if (!contract)
  return ((void*)0);

 INIT_LIST_HEAD(&contract->demands);
 INIT_LIST_HEAD(&contract->completed_demands);

 return contract;
}
