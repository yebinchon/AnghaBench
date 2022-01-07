
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i40iw_hw {scalar_t__ hw_addr; } ;


 scalar_t__ readl (scalar_t__) ;

inline u32 i40iw_rd32(struct i40iw_hw *hw, u32 reg)
{
 return readl(hw->hw_addr + reg);
}
