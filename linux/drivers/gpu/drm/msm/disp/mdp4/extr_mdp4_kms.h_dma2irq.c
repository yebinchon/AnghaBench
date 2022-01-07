
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp4_dma { ____Placeholder_mdp4_dma } mdp4_dma ;





 int MDP4_IRQ_DMA_E_DONE ;
 int MDP4_IRQ_DMA_P_DONE ;
 int MDP4_IRQ_DMA_S_DONE ;

__attribute__((used)) static inline uint32_t dma2irq(enum mdp4_dma dma)
{
 switch (dma) {
 case 129: return MDP4_IRQ_DMA_P_DONE;
 case 128: return MDP4_IRQ_DMA_S_DONE;
 case 130: return MDP4_IRQ_DMA_E_DONE;
 default: return 0;
 }
}
