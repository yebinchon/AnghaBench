
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i40iw_hw {scalar_t__ hw_addr; } ;


 int writel (scalar_t__,scalar_t__) ;

inline void i40iw_wr32(struct i40iw_hw *hw, u32 reg, u32 value)
{
 writel(value, hw->hw_addr + reg);
}
