
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct region {scalar_t__ base; scalar_t__ limit; int enabled; } ;



__attribute__((used)) static bool in_region(struct region *rp, u64 addr)
{
 if (!rp->enabled)
  return 0;

 return rp->base <= addr && addr <= rp->limit;
}
