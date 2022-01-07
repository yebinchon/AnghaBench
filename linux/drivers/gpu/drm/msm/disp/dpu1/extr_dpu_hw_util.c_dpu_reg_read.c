
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dpu_hw_blk_reg_map {scalar_t__ blk_off; scalar_t__ base_off; } ;


 int readl_relaxed (scalar_t__) ;

int dpu_reg_read(struct dpu_hw_blk_reg_map *c, u32 reg_off)
{
 return readl_relaxed(c->base_off + c->blk_off + reg_off);
}
