
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_cs_parser {struct evergreen_cs_track* track; } ;
struct evergreen_cs_track {int* reg_safe_bm; } ;


 int REG_SAFE_BM_SIZE ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool evergreen_is_safe_reg(struct radeon_cs_parser *p, u32 reg)
{
 struct evergreen_cs_track *track = p->track;
 u32 m, i;

 i = (reg >> 7);
 if (unlikely(i >= REG_SAFE_BM_SIZE)) {
  return 0;
 }
 m = 1 << ((reg >> 2) & 31);
 if (!(track->reg_safe_bm[i] & m))
  return 1;

 return 0;
}
