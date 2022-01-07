
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp4_dma { ____Placeholder_mdp4_dma } mdp4_dma ;





 int MDP4_IRQ_EXTERNAL_INTF_UDERRUN ;
 int MDP4_IRQ_PRIMARY_INTF_UDERRUN ;

__attribute__((used)) static inline uint32_t dma2err(enum mdp4_dma dma)
{
 switch (dma) {
 case 129: return MDP4_IRQ_PRIMARY_INTF_UDERRUN;
 case 128: return 0;
 case 130: return MDP4_IRQ_EXTERNAL_INTF_UDERRUN;
 default: return 0;
 }
}
