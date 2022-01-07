
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;


 int GTFIFOCTL ;
 int GT_FIFO_FREE_ENTRIES_MASK ;
 int __raw_uncore_read32 (struct intel_uncore*,int ) ;

__attribute__((used)) static inline u32 fifo_free_entries(struct intel_uncore *uncore)
{
 u32 count = __raw_uncore_read32(uncore, GTFIFOCTL);

 return count & GT_FIFO_FREE_ENTRIES_MASK;
}
