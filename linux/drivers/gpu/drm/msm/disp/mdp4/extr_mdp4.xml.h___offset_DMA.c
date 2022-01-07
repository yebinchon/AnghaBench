
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp4_dma { ____Placeholder_mdp4_dma } mdp4_dma ;





 int INVALID_IDX (int) ;

__attribute__((used)) static inline uint32_t __offset_DMA(enum mdp4_dma idx)
{
 switch (idx) {
  case 129: return 0x00090000;
  case 128: return 0x000a0000;
  case 130: return 0x000b0000;
  default: return INVALID_IDX(idx);
 }
}
