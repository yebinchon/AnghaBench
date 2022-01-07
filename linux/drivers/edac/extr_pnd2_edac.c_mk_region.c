
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct region {int enabled; void* limit; void* base; } ;


 int edac_dbg (int,char*,char*,void*,void*) ;

__attribute__((used)) static void mk_region(char *name, struct region *rp, u64 base, u64 limit)
{
 rp->enabled = 1;
 rp->base = base;
 rp->limit = limit;
 edac_dbg(2, "Region:%s [%llx, %llx]\n", name, base, limit);
}
