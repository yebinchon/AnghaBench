
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LM3533_REG_ALS_BOUNDARY_BASE ;

__attribute__((used)) static inline u8 lm3533_als_get_threshold_reg(unsigned nr, bool raising)
{
 u8 offset = !raising;

 return LM3533_REG_ALS_BOUNDARY_BASE + 2 * nr + offset;
}
