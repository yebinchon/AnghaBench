
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp4_cursor_format { ____Placeholder_mdp4_cursor_format } mdp4_cursor_format ;


 int MDP4_DMA_CURSOR_BLEND_CONFIG_FORMAT__MASK ;
 int MDP4_DMA_CURSOR_BLEND_CONFIG_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t MDP4_DMA_CURSOR_BLEND_CONFIG_FORMAT(enum mdp4_cursor_format val)
{
 return ((val) << MDP4_DMA_CURSOR_BLEND_CONFIG_FORMAT__SHIFT) & MDP4_DMA_CURSOR_BLEND_CONFIG_FORMAT__MASK;
}
