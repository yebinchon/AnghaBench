
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_alloc {int dummy; } ;
struct entry {int dummy; } ;


 unsigned int NR_CACHE_LEVELS ;
 struct entry* get_entry (struct entry_alloc*,unsigned int) ;

__attribute__((used)) static struct entry *get_sentinel(struct entry_alloc *ea, unsigned level, bool which)
{
 return get_entry(ea, which ? level : NR_CACHE_LEVELS + level);
}
