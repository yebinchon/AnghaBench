
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum type { ____Placeholder_type } type ;


 int BROADWELL ;
 int EINVAL ;
 int HASWELL ;
 int KNIGHTS_LANDING ;
 int RANK_CNT_BITS (int ) ;
 int edac_dbg (int ,char*,int,int,unsigned int,int ) ;

__attribute__((used)) static inline int numrank(enum type type, u32 mtr)
{
 int ranks = (1 << RANK_CNT_BITS(mtr));
 int max = 4;

 if (type == HASWELL || type == BROADWELL || type == KNIGHTS_LANDING)
  max = 8;

 if (ranks > max) {
  edac_dbg(0, "Invalid number of ranks: %d (max = %i) raw value = %x (%04x)\n",
    ranks, max, (unsigned int)RANK_CNT_BITS(mtr), mtr);
  return -EINVAL;
 }

 return ranks;
}
