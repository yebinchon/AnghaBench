
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GEM_BUG_ON (int) ;
 int IS_ALIGNED (int,int) ;
 int MI_FLUSH_DW ;
 int MI_FLUSH_DW_OP_STOREDW ;
 int MI_FLUSH_DW_USE_GTT ;

__attribute__((used)) static inline u32 *
gen8_emit_ggtt_write(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
{

 GEM_BUG_ON(gtt_offset & (1 << 5));

 GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));

 *cs++ = (MI_FLUSH_DW + 1) | MI_FLUSH_DW_OP_STOREDW | flags;
 *cs++ = gtt_offset | MI_FLUSH_DW_USE_GTT;
 *cs++ = 0;
 *cs++ = value;

 return cs;
}
