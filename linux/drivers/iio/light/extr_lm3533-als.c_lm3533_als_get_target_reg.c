
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int LM3533_REG_ALS_TARGET_BASE ;

__attribute__((used)) static inline u8 lm3533_als_get_target_reg(unsigned channel, unsigned zone)
{
 return LM3533_REG_ALS_TARGET_BASE + 5 * channel + zone;
}
